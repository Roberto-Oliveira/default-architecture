ej.Grid.Locale["pt-BR"] = {
    GroupDropArea: "Arraste o cabeçalho das colunas que possuam este símbolo:" + '<span class="e-icon e-gridgroupbutton" style="color: #fbffff; margin-left: -6px; margin-right: 22px;"></span>' + "para a área azul para agrupá-las.",
    Columns: "Colunas",
    SelectAll: "<b>Selecionar tudo</b>",
    Cancel: "Cancelar",
    Done: "Filtrar",
    ExcelExport: "Exportar para Excel",
    Search: "Pesquisar"
};

if (ej.Pager) ej.Pager.Locale["pt-BR"] = {
    pagerInfo: "{0} de {1} páginas ({2} itens)",
    firstPageTooltip: "Ir para a primeira página",
    lastPageTooltip: "Ir para a última página",
    nextPageTooltip: "Ir para a próxima página",
    previousPageTooltip: "Ir para a página anterior",
    nextPagerTooltip: "Ir para a próxima página",
    previousPagerTooltip: "Ir para página anterior"
};

ej.addCulture("pt-BR", {
    name: "pt-BR",
    englishName: "Portuguese (Brazil)",
    nativeName: "Português (Brasil)",
    language: "pt",
    numberFormat: {
        ",": ".",
        ".": ",",
        "NaN": "NaN (Não é um número)",
        negativeInfinity: "-Infinito",
        positiveInfinity: "+Infinito",
        percent: {
            pattern: ["-n%", "n%"],
            ",": ".",
            ".": ","
        },
        currency: {
            pattern: ["-$ n", "$ n"],
            ",": ".",
            ".": ",",
            symbol: "R$"
        }
    },
    calendars: {
        standard: {
            days: {
                names: ["domingo", "segunda-feira", "terça-feira", "quarta-feira", "quinta-feira", "sexta-feira", "sábado"],
                namesAbbr: ["dom", "seg", "ter", "qua", "qui", "sex", "sáb"],
                namesShort: ["D", "S", "T", "Q", "Q", "S", "S"]
            },
            months: {
                names: ["janeiro", "fevereiro", "março", "abril", "maio", "junho", "julho", "agosto", "setembro", "outubro", "novembro", "dezembro", ""],
                namesAbbr: ["jan", "fev", "mar", "abr", "mai", "jun", "jul", "ago", "set", "out", "nov", "dez", ""]
            },
            AM: null,
            PM: null,
            patterns: {
                d: "dd/MM/yyyy",
                D: "dddd, d' de 'MMMM' de 'yyyy",
                t: "HH:mm",
                T: "HH:mm:ss",
                f: "dddd, d' de 'MMMM' de 'yyyy HH:mm",
                F: "dddd, d' de 'MMMM' de 'yyyy HH:mm:ss",
                M: "d' de 'MMMM",
                Y: "MMMM' de 'yyyy"
            }
        }
    }
});