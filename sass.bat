@echo off 
set parent= sass
set current=abstract, base, components, layout, pages, themes, vendors


@Rem :: MainFunction :: 
for %%I in (%current%) do (
    call:create_folders %%I 
    )
    
@REM :: Creating files & dirs ::
:create_folders 

IF not EXIST %parent%\main.scss touch %parent%\main.scss
IF not EXIST %parent%\%~1 mkdir %parent%\%~1

if %~1 == abstract (touch %parent%\%~1\_variables.scss & touch %parent%\%~1\_functions.scss & touch %parent%\%~1\_mixins.scss)
if %~1 == base (touch %parent%\%~1\_typography.scss & touch %parent%\%~1\_reset.scss)
if %~1 == components (touch %parent%\%~1\_buttons.scss & touch %parent%\%~1\_slider.scss & touch %parent%\%~1\_carousel.scss)
if %~1 == layout (touch %parent%\%~1\_navigation.scss & touch %parent%\%~1\_grid.scss & touch %parent%\%~1\_header.scss & touch %parent%\%~1\_footer.scss & touch %parent%\%~1\_sidebar.scss & touch %parent%\%~1\_forms.scss)
if %~1 == pages (touch %parent%\%~1\_home.scss & touch %parent%\%~1\_about.scss & touch %parent%\%~1\_contact.scss)
if %~1 == themes (touch %parent%\%~1\_themes.scss & touch %parent%\%~1\_admin.scss)
if %~1 == vendors (touch %parent%\%~1\_bootstrap.scss & touch %parent%\%~1\_jquery.scss)

EXIT /B 0
