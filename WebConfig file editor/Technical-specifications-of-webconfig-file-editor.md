# WebConfig file editor

The exercise consists to develop a VCL application, using Delphi language, that is able to configure a Web.config file as described in the technical specifications section. The VCL application must be developped using Model-View-Presenter design pattern.

Technical specifications
========================

Web.config are XML files containing all the configurations and options required to run an application developed in Microsoft ASP.NET.

The power of this tool is: using your application, users will able to modify some areas (in a Web.config file), described later, without knowing the XML standard!


Connection strings
------------------

Web.config files always have an XML section called <connectionStrings> within all connection strings to different databases (used in a Microsoft ASP.NET application) are specified.

The WebConfig file editor must be able to reads all the connection strings specified in a Web.config file and allows users to modify the following values:

- Data Source (SQL Server Instance)
- Initial Catalog (Database)
- User ID
- Password

Following there is an example of the section <connectionStrings> contained in a Web.config file:

```XML
<connectionStrings>
<!-- Stringa di connessione al database - ApplicationServices -->
<add name="ApplicationServices" connectionString="Data Source=SERVERNAME;Initial Catalog=DATABASENAME;User ID=USERNAME;Password=PASSWORD" providerName="System.Data.SqlClient" />

<!-- Stringa di connessione al database 1 -->
<add name="Database1" connectionString="metadata=res://*/Database.Portals.DB.csdl|res://*/Database.Portals.DB.ssdl|res://*/Database.Portals.DB.msl;provider=System.Data.SqlClient;provider connection string=&quot;data source=SERVERNAME;initial catalog=DATABASENAME;User ID=USERNAME;Password=PASSWORD;multipleactiveresultsets=True;App=EntityFramework&quot;" providerName="System.Data.EntityClient" />

<!-- Stringa di connessione al database 2 -->
<add name="Database2" connectionString="metadata=res://*/Database.Fornitori.DB.csdl|res://*/Database.Fornitori.DB.ssdl|res://*/Database.Fornitori.DB.msl;provider=System.Data.SqlClient;provider connection string=&quot;data source=SERVERNAME;initial catalog=DATABASENAME;User ID=USERNAME;Password=PASSWORD;multipleactiveresultsets=True;App=EntityFramework&quot;" providerName="System.Data.EntityClient" />
  </connectionStrings>
```


Goals to achieve
----------------


Folders organization
--------------------



For any questions or doubts don't hesitate to contact me.

Enjoy!
