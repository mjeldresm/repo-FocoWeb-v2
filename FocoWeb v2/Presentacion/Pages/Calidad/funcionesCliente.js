var calidad = {
    blockuid: 0,
    arrayCheckCommitVal: ['#date_init', '#date_end', '#num-plano'],
    arrayCheckCommit: ['#cb-partida', '#cb-piso', '#cb-super-resp', '#cb-super-rev'],
    arrayCheckCommitData: [[], [],
    ['#cb-depto', '#cb-lugar'],
    ['#cb-eje', '#cb-entre_eje', '#cb-entre_eje-2'],
    ['#cb-eje', '#cb-entre_eje', '#cb-entre_eje-2', '#cb-entre_eje-3'],
    [], []],
    idProyecto: '',
    arrPiso: '',
    pisoPag: 0,
    complete: 0,
    pagina: 0,
    stateFierro: 99,
    killScroll: false,
    arrFilter: [],
    initFilter: '<div sp="" class="data-filter data-filter-selected" data-todos="todos">Todos</div>',
    noDataFilter: '<div sp="" class="data-filter data-filter-selected">Sin datos</div>',
    data: '',
    countChart: 0,
    controlPartida: '', controlUbic: '', controlFicha: '', id_piso: '',
    navs: $('#title').html(),
    proy: '',
    per: '',
    width: 400,
    idPartidalastSelectedAddTarea: 0,
    code: 0,
    $objTitle: '',
    txtEdit: '', txtEdit2: '', txtEdit3: '', hasInpect: '',
    lastSrch: '',
    strFichas: '',
    arrReasign: [],
    tipsy: false,
    setActions: function (level, $proy, $user, $filtro) {
        calidad.idProyecto = $proy;
        level = parseInt(level);
        calidad.$objTitle = $('#defaultTitle').clone();
        this.setActionHomeback($user, $proy);
        calidad.arrFilter['fecha'] = 'l4_week';
        calidad.arrFilter['idPeriodo'] = $('#cb-etapa').find('.data-filter-selected').attr('sp');
        $('#listFichas').css(
            { 'max-height': ($(window).height() - $('#wrap-title-item').height() - $('#nav-act').height()) + 'px' });
        $('#principal').css('visibility', 'visible');
        var dates = $("#fecha_init, #fecha_fin").datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: "-3:+0",
            numberOfMonths: 2,
            onSelect: function (selectedDate) {
                var option = this.id == "fecha_init" ? "minDate" : "maxDate",
                    instance = $(this).data("datepicker"),
                    date = $.datepicker.parseDate(
                        instance.settings.dateFormat ||
                        $.datepicker._defaults.dateFormat,
                        selectedDate, instance.settings);
                dates.not(this).datepicker("option", option, date);
            }
        });
        calidad.actionFilterFecha();
        $('#btn-newTask').unbind('click').click(function () {
            global.resizePage();
            $('#title').html(calidad.navs);
            if ($('#newTask').is(':visible')) {
                $('#newTask').hide();
                global.hideMenuContent();
            } else {
                $('div.btn-periodo.data-filter-selected').click();
                var periodo = $('#cb-etapa').find('.data-filter-selected').attr('sp');
                var agrupar = $('#cb-etapa').find('.data-filter-selected').data('agrupar');
                var levelSel = parseInt($('#cb-etapa').find('.data-filter-selected').data('level'));
                calidad.arrFilter['idPeriodo'] = periodo;
                calidad.arrFilter['agrupar'] = agrupar;
                calidad.arrFilter['level'] = levelSel;
                //calidad.setActionAddFicha();
                if ($('#cb-partida').find('div').length === 0) {
                    xajax_getPartidasAddTarea(periodo, levelSel);
                }
                calidad.setActionPartida(levelSel);
                calidad.markDataList();
                $('#cb-piso').find('div').unbind('click').click(function () {
                    var level = parseInt($('#cb-etapa').find('.data-filter-selected').data('level'));
                    if (level == 2 || level == 3 || level == 4) {
                        calidad.compruebaFicha(level, $(this).attr('sp'));
                    }
                    if (level == 2) {
                        $('#cb-lugar').html('<i>Elija un depto...</i>');
                        calidad.lastDeptoAddTarea = 0;
                        calidad.hidePartida();
                        xajax_getDepto($(this).attr('sp'));
                    }
                });
                $('#title').find('span[id!=title-proy]').hide();
                global.showMenuContent($(this).attr('id'), 260, 'newTask');
            }

            calidad.controlCheckboxAdjuntoFicha();
        });

        $('#cb-etapa div').unbind('click').click(function () {
            calidad.lastDeptoAddTarea = 0;
            calidad.arrFilter['idPeriodo'] = $(this).attr('sp');
            calidad.arrFilter['agrupar'] = $(this).data('agrupar');
            calidad.arrFilter['level'] = parseInt($(this).data('level'));
            calidad.changeAddTarea($(this));
        });
        $('#periodoAu').find('.data-filter').click(function () {
            if ($(this).attr('sp') > 0) {
                xajax_getChild($('#proyecto').find('.data-filter-selected').attr('sp'), $(this).attr('sp'), 'periodo');
            } else {
                $('#partida').find('.data-filter:first').show();
                $('#partida-wraper').html('');
            }
        });
        $('.ressign-ficha').unbind('click').click(function () {
            calidad.reasignarFichas();
        });
        $('#periodo').find('.data-filter').click(function () {
            if ($(this).attr('sp') > 0) {
                xajax_getChild($('#proyecto').find('.data-filter-selected').attr('sp'), $(this).attr('sp'), 'periodo');
            } else {
                $('#partida').find('.data-filter:first').show();
                $('#partida-wraper').html('');
            }
        });
        //        if($('#proyecto').find("[data-tipo='0']").length > 1){
        //            indicador.listSorter();
        //        }
        $('#btn-filtros').unbind('click').click(function () {
            global.resizePage();
            if (calidad.tipsy === false) {
                calidad.tipsy = true;
                global.setTipsyOnLoad($('#vistas-selector').find('.button:first'),
                    '<strong>¡NUEVO! Estadísticas de programación</strong> ', { 'gravity': 'e' })
            }

            var etapaSelected = $('#filter-wrap [type="idPeriodo"] div.btn-periodo.data-filter-selected');
            if (etapaSelected.length == 0) {
                $('#filter-wrap [type="idPeriodo"] div.btn-periodo').first().click();
            }

            $('#title').html(calidad.navs);
            $('#title').find('span[id!=title-proy]').show();
            if ($('#filter-wrap').find('div.data-filter-selected').length === 0) {
                $('div.btn-periodo:first').addClass('data-filter-selected');
            }

            calidad.arrFilter['fecha'] = $('#filter-wrap').find('.filter-container-fecha').find('.data-filter-selected').attr('sp');

            calidad.arrFilter['idPeriodo'] = $('#filter-wrap .filter-container[type="idPeriodo"]').find('.data-filter-selected').attr('sp');
            calidad.arrFilter['agrupar'] = $('#filter-wrap .filter-container[type="idPeriodo"] ').find('.data-filter-selected').data('agrupar');
            calidad.arrFilter['level'] = parseInt($('#filter-wrap .filter-container[type="idPeriodo"]').find('.data-filter-selected').data('level'));
            if ($('#filter-wrap').is(':visible')) {
                global.hideMenuContent();
            } else {
                //$('div.btn-periodo.data-filter-selected').click();
                global.showMenuContent($(this).attr('id'), 204, 'filter-wrap');
                $('#filter-wrap .ctnt-filter').scrollTo('.data-filter-selected', { offset: -30 });
            }
        });

        $('#btn-search').unbind('click').click(function (event) {
            //$(".filter-container-creadas .selectedPer").click();
            global.resizePage();
            $('.button_save_buscar_normal').show();
            if ($('#fichaSearch').is(':visible')) {
                $('#fichaSearch').hide();
                $('#title').html(calidad.navs);
                global.hideMenuContent();
            } else {
                calidad.navs = $('#title').html();
                calidad.proy = $('#title-proy').html();
                calidad.per = $('#title-periodo').html();
                if ($('#busqueda-avanzada').css('display') == 'block') {
                    $('#busqueda-avanzada').hide();
                    $('.avanzada').show();
                }
                $('#fichaSearch').css('height', '49px');
                global.showMenuContent($(this).attr('id'), 90, 'fichaSearch');
                $('#fichaSearch').css('height', '60px');
                $('#title').html('<span id="title-proy">' + calidad.proy + '</span>');
                $('#srchA-idFicha').focus();
                var periodo = $('.btn-periodo.data-filter-selected').attr('sp');
                var levelSel = parseInt($('.btn-periodo.data-filter-selected').data('level'));
                calidad.lastSrch = {
                    'idFicha': '',
                    'piso': '',
                    'depto': '',
                    'partida': '',
                    'periodo': '' + periodo,
                    'revisor': '',
                    'ejecutor': '',
                    'fecha-init': '',
                    'fecha-fin': '',
                    'eje1': '',
                    'eje2': '',
                    'eje3': '',
                    'eje4': ''
                };
                if (levelSel == '4' || levelSel == '3') {
                    $('#srchA-depto').hide();
                    $('.ejes').show();
                    if (level == 4) {
                        $('#srchA-ejes4').show();
                        var val = (calidad.width / 4) - 18;
                        $(".ejes").css('width', val + 'px');
                    } else {
                        $('#srchA-ejes4').hide();
                        var val = (calidad.width / 3) - 16;
                        $(".ejes").css('width', val + 'px');
                    }
                } else {
                    if (level == 2) {
                        $('#srchA-depto').show();
                        $('.ejes').hide();
                    }
                    if (level == 5) {
                        //AQUI BUSQUEDA LEVEL 5
                    }
                    if (level == 6) {
                        //AQUI BUSQUEDA LEVEL 6
                    }
                }

                $('#listFichas').show();
                $('#wrap-title-item').show();
                $("#srchA-idFicha").livesearch({
                    searchCallback: calidad.searchFichaId,
                    minimumSearchLength: 1
                });