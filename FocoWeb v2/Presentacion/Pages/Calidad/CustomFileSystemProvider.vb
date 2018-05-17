Imports DevExpress.Web
Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.IO
Imports System.Linq
Imports System.Web


Namespace customfile
    Public Class CustomFileSystemProvider
        Inherits PhysicalFileSystemProvider
        Private ReadOnly DefaultRecentFilesNumber As Integer = 20
        Private ReadOnly ImageExtensions() As String = {".png", ".gif", ".jpg", ".jpeg", ".ico", ".bmp"}
        Private ReadOnly PDFExtensions() As String = {".pdf"}

        Public Sub New(ByVal rootFolder As String)
            MyBase.New(rootFolder)
        End Sub

        Public Overrides Sub GetFilteredItems(ByVal args As FileManagerGetFilteredItemsArgs)
            Select Case args.FileListCustomFilter
                Case "Images"
                    args.Items = ExecuteFilterByExtension(ImageExtensions, args.Folder)
                Case "PDFs"
                    args.Items = ExecuteFilterByExtension(PDFExtensions, args.Folder)
                Case Else
                    MyBase.GetFilteredItems(args)
                    Return
            End Select
            If args.Items IsNot Nothing AndAlso (Not String.IsNullOrEmpty(args.FilterBoxText)) Then
                args.Items = args.Items.Where(Function(item) item.Name.ToLower().IndexOf(args.FilterBoxText) > -1)
            End If
        End Sub
        Private Function ExecuteFilterByExtension(ByVal extensions() As String, ByVal folder As FileManagerFolder) As IEnumerable(Of FileManagerItem)
            Dim dir As DirectoryInfo = GetDirectoryInfo(folder)
            Return dir.GetFiles("*", SearchOption.AllDirectories).Where(Function(file) extensions.Contains(file.Extension)).Select(Function(f) CreateFileManagerItem(f))
        End Function
        Private Function ExecuteFilterByRecent(ByVal folder As FileManagerFolder) As IEnumerable(Of FileManagerItem)
            Dim dir As DirectoryInfo = GetDirectoryInfo(folder)
            Return dir.GetFileSystemInfos("*", SearchOption.AllDirectories).OrderByDescending(Function(item) item.LastWriteTime).Take(DefaultRecentFilesNumber).Select(Function(i) CreateFileManagerItem(i))
        End Function

        Private Function GetDirectoryInfo(ByVal folder As FileManagerFolder) As DirectoryInfo
            Return New DirectoryInfo(Path.Combine(GetResolvedRootFolderPath(), folder.RelativeName))
        End Function
        Private Function CreateFileManagerItem(ByVal info As FileSystemInfo) As FileManagerItem
            Dim rootFullPath As String = Path.GetFullPath(GetResolvedRootFolderPath())
            Dim relativeName As String = info.FullName.Replace(rootFullPath, "").TrimStart("\"c)
            If TypeOf info Is DirectoryInfo Then
                Return New FileManagerFolder(Me, relativeName)
            End If
            Return New FileManagerFile(Me, relativeName)
        End Function
    End Class
End Namespace
