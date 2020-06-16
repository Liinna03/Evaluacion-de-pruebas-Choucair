*** Settings ***
Documentation   Existe un documento de word con los casos de prueba utilizados al realizar las pruebas manuales con los pasos necesarios.
#robot -T -d reports -n noncritical -i TEXTODELTAGAQUI NOMBREDELARCHIVOAQUI  // Correr caso de prueba

Library         SeleniumLibrary
Library         String

*** Variables ***
${Navegador}            chrome
${URL}               	https://www.choucairtesting.com/

*** Keywords ***
Abrir navegador ir a pagina de choucairtesting sección servicios
	Open Browser					${URL}		${Navegador}
    Maximize Browser Window
	Title Should Be 				Choucair Testing
	Wait Until Element Is Visible	xpath=//*[@id="slideshow"]/div[2]/div/h2     01:00
	Click Element 					xpath=//*[@id="menu-item-6142"]/a
    Sleep                           5s
	Title Should Be 				Servicios – Choucair Testing
    Sleep                           5s
	Wait Until Element Is Visible	xpath=//*[@id="main"]/div/div/div/div/section[1]/div/div/div/div/div/div/div/div/img         01:00
    Click Element                   xpath=//*[@id="cookie_action_close_header"]

Ir a cada opción de menu Servicios
    @{TitOpcServicio}               Create List    //*[@id="main"]/div/div/div/div/section[5]/div/div/div/div/div/div[1]/div/h2     //*[@id="main"]/div/div/div/div/section[8]/div/div/div/div/div/div/div/div/img      //*[@id="main"]/div/div/div/div/section[10]/div/div/div/div/div/div[1]/div/h2
    ${contador}                     Set Variable    0
    [Arguments]                         @{MenuServicio}
    FOR     ${OpcServicio}      IN      @{MenuServicio}
        Scroll Element Into View        xpath=${OpcServicio}
        Sleep                           5s
        Click Element                   xpath=${OpcServicio}
        Sleep                           5s
        Title Should Be                 Servicios – Choucair Testing
        Wait Until Element Is Visible   xpath=${TitOpcServicio}[${contador}]      01:00
        Scroll Element Into View        xpath=//*[@id="main"]/div/div/div/div/section[1]/div/div/div/div/div/div/div/div/img
        ${contador} =                   Evaluate   ${contador} + 1
        Sleep                           5s
    END
Ir a cada opción de portafolio de soluciones

    Abrir navegador ir a pagina de choucairtesting sección servicios
    Scroll Element Into View            xpath=//*[@id="main"]/div/div/div/div/section[3]
    Click Element                       xpath= //*[@id="main"]/div/div/div/div/section[3]/div/div/div[3]/div/div/div/div/div/div/h3/a
    Wait Until Element Is Visible       xpath=//*[@id="main"]/div/div/div/div/section[11]
    [Arguments]                         @{PortafolioSolu}
    #@{PortafolioSolu}                   Create List      //*[@id="main"]/div/div/div/div/section[11]/div/div/div[1]/div/div/div[2]/div/div/figure/a/img      //*[@id="main"]/div/div/div/div/section[11]/div/div/div[2]/div/div/div[2]/div/div/figure/a/img    //*[@id="main"]/div/div/div/div/section[11]/div/div/div[3]/div/div/div[2]/div/div/figure/a/img    //*[@id="main"]/div/div/div/div/section[11]/div/div/div[4]/div/div/div[2]/div/div/figure/a/img      //*[@id="main"]/div/div/div/div/section[11]/div/div/div[5]/div/div/div[2]/div/div/figure/a/img   //*[@id="main"]/div/div/div/div/section[11]/div/div/div[6]/div/div/div[2]/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[1]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[2]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[3]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[4]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[5]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[6]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[13]/div/div/div[2]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[13]/div/div/div[3]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[13]/div/div/div[4]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[13]/div/div/div[5]/div/div/div/div/div/figure/a/img
    @{InfPortafolio}                    Create List      //*[@id="main"]/div/div/div/div/section[15]/div/div/div[1]/div/div/div[1]/div/div/p/strong          //*[@id="main"]/div/div/div/div/section[23]/div/div/div[1]/div/div/div/div/div/p[1]/strong        //*[@id="main"]/div/div/div/div/section[25]/div/div/div[2]/div/div/div/div/div/p[1]/strong        //*[@id="main"]/div/div/div/div/section[27]/div/div/div[1]/div/div/div/div/div/p[1]/strong[2]       //*[@id="main"]/div/div/div/div/section[21]/div/div/div[2]/div/div/div/div/div/p[1]/strong[2]       //*[@id="main"]/div/div/div/div/section[29]/div/div/div[2]/div/div/div/div/div/p[1]/strong[3]   //*[@id="main"]/div/div/div/div/section[19]/div/div/div[1]/div/div/div/div/div/p[1]/strong[2]   //*[@id="main"]/div/div/div/div/section[17]/div/div/div[2]/div/div/div/div/div/p[1]/strong[2]   //*[@id="main"]/div/div/div/div/section[31]/div/div/div[2]/div/div/div/div/div/p[1]/strong      //*[@id="main"]/div/div/div/div/section[33]/div/div/div[1]/div/div/div/div/div/p[1]/strong[2]   //*[@id="main"]/div/div/div/div/section[35]/div/div/div[2]/div/div/div/div/div/p[1]/strong      //*[@id="main"]/div/div/div/div/section[37]/div/div/div[1]/div/div/div/div/div/p[1]/strong      //*[@id="main"]/div/div/div/div/section[43]/div/div/div[2]/div/div/div/div/div/p[1]/b[2]        //*[@id="main"]/div/div/div/div/section[39]/div/div/div[2]/div/div/div/div/div/p[1]/strong[2]   //*[@id="main"]/div/div/div/div/section[45]/div/div/div[1]/div/div/div/div/div/p[1]/strong      //*[@id="main"]/div/div/div/div/section[41]/div/div/div[1]/div/div/div[1]/div/div/p[1]/strong[2]
    ${contador}                         Set Variable    0
    FOR     ${OpcPortafolio}       IN      @{PortafolioSolu}
        Scroll Element Into View        xpath=${OpcPortafolio}
        Sleep                           5s
        Click Element                   xpath=${OpcPortafolio}
        Sleep                           5s
        Title Should Be                 Servicios – Choucair Testing
        Wait Until Element Is Visible   xpath=${InfPortafolio}[${contador}]      01:00
        Scroll Element Into View        xpath=//*[@id="main"]/div/div/div/div/section[11]
        ${contador} =                   Evaluate   ${contador} + 1
        Sleep                           5s
    END


*** Test Cases ***
C01 En la página de la sección servicios dar clic en el logo de la empresa y regresar a la página de inicio
    [Tags]                              Test1
	Abrir navegador ir a pagina de choucairtesting sección servicios
	Click Element                       xpath=//*[@id="masthead"]/div/div/div/div[1]/a/img
	Title Should Be 		      		Choucair Testing
	Wait Until Element Is Visible      	xpath=//*[@id="slideshow"]/div[2]/div/h2
	Close Browser

C02 Dar clic en cada opción del menú de navegación desde la página de servicios.
    [Tags]                              Test2
    @{MenuNavegador}=                   Create List     //*[@id="menu-item-870"]    //*[@id="menu-item-1876"]   //*[@id="menu-item-7979"]/a   //*[@id="menu-item-550"]     //*[@id="menu-item-7313"]/a    //*[@id="menu-item-282"]/a
    @{TituloSector}=                    Create List     //*[@id="content"]/div/div/div/div/div/section[1]/div/div/div/div/div/div/div/div/img       //*[@id="content"]/div/div/div/div/div/section[1]/div/div/div/div/div/div/div/div/img   //*[@id="content"]/div/div/div/div/div/section[2]      //*[@id="content"]/div/div/div/div/div/section[1]/div/div/div/div/div/div/div/div/img   //*[@id="content"]/div/div/div/div/div/section[1]/div/div/div/div/div/div/div/div/img   //*[@id="content"]/div/div/div/div/div/section[1]/div/div/div/div/div/div/div/div/img
    ${D}                                Set Variable    0
    Abrir navegador ir a pagina de choucairtesting sección servicios
    FOR    ${OpcMenuNavegador}          IN           @{MenuNavegador}
        Click Element                       xpath=${OpcMenuNavegador}
        Wait Until Element Is Visible       xpath=${TituloSector}[${D}]   00:05:00
        Click Element                       xpath=//*[@id="menu-item-6142"]/a
        Wait Until Element Is Visible       xpath=//*[@id="main"]/div/div/div/div/section[1]/div/div/div/div/div/div/div/div/img     00:05:00
        ${D} =                              Evaluate   ${D} + 1
    END
    Close Browser

C03 Buscar palabra en la barra de búsqueda
    [Tags]                              Test3
    Abrir navegador ir a pagina de choucairtesting sección servicios
    Click Element                       xpath=//*[@id="menu-menu-1"]/li[8]/a
    Input Text                          xpath=//*[@id="menu-menu-1"]/li[8]/form/label/input      pruebas móviles
    Sleep                               3s
    Press Keys                          None             ENTER
    Page Should Contain                 pruebas móviles
    Sleep          5s
    Close Browser

C04 Dar clic al enlace de sección servicios en el menú navegación, estando en la pagina de sección servicios.
    [Tags]                              Test4
    Abrir navegador ir a pagina de choucairtesting sección servicios
    Click Element                       xpath=//*[@id="menu-item-6142"]/a
    Wait Until Element Is Visible       xpath=//*[@id="main"]/div/div/div/div/section[1]/div/div/div/div/div/div/div/div/img     00:05:00
    Close Browser

C05 Dar clic en la imagen de cada una de las opciones del menú de servicios. (Capacidades, cómo lo hacemos y portafolio de soluciones)
    [Tags]                              Test5
    @{MenuServicio1}                    Create List    //*[@id="main"]/div/div/div/div/section[3]/div/div/div[1]/div/div/div/div/div/figure/a/img   //*[@id="main"]/div/div/div/div/section[3]/div/div/div[2]/div/div/div/div/div/figure/a/img      //*[@id="main"]/div/div/div/div/section[3]/div/div/div[3]/div/div/div/div/div/figure/a/img
    Abrir navegador ir a pagina de choucairtesting sección servicios
    Ir a cada opción de menu Servicios                             @{MenuServicio1}
    Close Browser

C06 Dar clic en el título de cada una de las opciones del menú de servicios. (Capacidades, cómo lo hacemos y portafolio de soluciones)
    [Tags]                              Test6
    @{TitMenuServicio}                  Create List     //*[@id="main"]/div/div/div/div/section[3]/div/div/div[1]/div/div/div/div/div/div/h3/a      //*[@id="main"]/div/div/div/div/section[3]/div/div/div[2]/div/div/div/div/div/div/h3/a      //*[@id="main"]/div/div/div/div/section[3]/div/div/div[3]/div/div/div/div/div/div/h3/a
    Abrir navegador ir a pagina de choucairtesting sección servicios
    Ir a cada opción de menu Servicios                             @{TitMenuServicio}
    Close Browser

C07 Dar Clic en la imagen de cada una de las opciones del portafolio de soluciones de testing
    [Tags]                              Test7
    @{PortafolioSolu1}                   Create List      //*[@id="main"]/div/div/div/div/section[11]/div/div/div[1]/div/div/div[2]/div/div/figure/a/img      //*[@id="main"]/div/div/div/div/section[11]/div/div/div[2]/div/div/div[2]/div/div/figure/a/img    //*[@id="main"]/div/div/div/div/section[11]/div/div/div[3]/div/div/div[2]/div/div/figure/a/img    //*[@id="main"]/div/div/div/div/section[11]/div/div/div[4]/div/div/div[2]/div/div/figure/a/img      //*[@id="main"]/div/div/div/div/section[11]/div/div/div[5]/div/div/div[2]/div/div/figure/a/img   //*[@id="main"]/div/div/div/div/section[11]/div/div/div[6]/div/div/div[2]/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[1]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[2]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[3]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[4]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[5]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[6]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[13]/div/div/div[2]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[13]/div/div/div[3]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[13]/div/div/div[4]/div/div/div/div/div/figure/a/img     //*[@id="main"]/div/div/div/div/section[13]/div/div/div[5]/div/div/div/div/div/figure/a/img
    Ir a cada opción de portafolio de soluciones        @{PortafolioSolu1}

C08 Dar Clic en el título de cada una de las opciones del portafolio de soluciones de
    [Tags]                              Test8
    @{TitPortafolioSolu}                   Create List      //*[@id="main"]/div/div/div/div/section[11]/div/div/div[1]/div/div/div[2]/div/div/div/h3/a      //*[@id="main"]/div/div/div/div/section[11]/div/div/div[2]/div/div/div[2]/div/div/div/h3/a      //*[@id="main"]/div/div/div/div/section[11]/div/div/div[3]/div/div/div[2]/div/div/div/h3/a      //*[@id="main"]/div/div/div/div/section[11]/div/div/div[4]/div/div/div[2]/div/div/div/h3/a      //*[@id="main"]/div/div/div/div/section[11]/div/div/div[5]/div/div/div[2]/div/div/div/h3/a      //*[@id="main"]/div/div/div/div/section[11]/div/div/div[6]/div/div/div[2]/div/div/div/h3/a      //*[@id="main"]/div/div/div/div/section[12]/div/div/div[1]/div/div/div/div/div/div/h3/a     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[2]/div/div/div/div/div/div/h3/a     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[3]/div/div/div/div/div/div/h3/a     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[4]/div/div/div/div/div/div/h3/a     //*[@id="main"]/div/div/div/div/section[12]/div/div/div[6]/div/div/div/div/div/div/h3/a     //*[@id="main"]/div/div/div/div/section[13]/div/div/div[2]/div/div/div/div/div/div/h3/a     //*[@id="main"]/div/div/div/div/section[13]/div/div/div[3]/div/div/div/div/div/div/h3/a     //*[@id="main"]/div/div/div/div/section[13]/div/div/div[4]/div/div/div/div/div/div/h3/a     //*[@id="main"]/div/div/div/div/section[13]/div/div/div[5]/div/div/div/div/div/div/h3/a
    Ir a cada opción de portafolio de soluciones        @{TitPortafolioSolu}


C09 Click en el botón “saber más” en Digital Performance Monitoring
    [Tags]          Test9
    Abrir navegador ir a pagina de choucairtesting sección servicios
    Scroll Element Into View        xpath=//*[@id="main"]/div/div/div/div/section[3]
    Click Element                   xpath= //*[@id="main"]/div/div/div/div/section[3]/div/div/div[3]/div/div/div/div/div/div/h3/a
    Wait Until Element Is Visible   xpath=//*[@id="main"]/div/div/div/div/section[11]
    Click Element                   xpath= //*[@id="main"]/div/div/div/div/section[11]/div/div/div[1]/div/div/div[2]/div/div/figure/a/img
    Scroll Element Into View        xpath=//*[@id="main"]/div/div/div/div/section[15]/div/div/div[1]/div/div/div[2]/div/div/a
    Click Element                   xpath=//*[@id="main"]/div/div/div/div/section[15]/div/div/div[1]/div/div/div[2]/div/div/a
    Title Should Be                 DPM – Choucair Testing
    Close Browser

C12 Recargar página web en la sección servicios y continúe en la misma sección
    [Tags]          Test12
    Abrir navegador ir a pagina de choucairtesting sección servicios
    Sleep       10s
    Reload Page
    Sleep       10s
    Title Should Be                 Servicios – Choucair Testing
    Close Browser
C13 Clic en el botón de desplazamiento hacia arriba
    [Tags]          Test13
    Abrir navegador ir a pagina de choucairtesting sección servicios
    Click Element                    xpath=//*[@id="main"]/div/div/div/div/section[11]
    Scroll Element Into View         xpath=//*[@id="page"]/a[2]
    Click Element                    xpath=//*[@id="page"]/a[2]
    Wait Until Element Is Visible    xpath=//*[@id="main"]/div/div/div/div/section[1]/div/div/div/div/div/div/div/div/img
    Close Browser
