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

As you can see, there are three different connection strings:

- ApplicationServices
- Database1
- Database2

Each connection string is also usually preceded by an explanatory comment enclosed by this pattern <! - ->, which should be inserted by WebConfig editor for greater user clarity. The comment is not always present in the input file.


Options
-------
Web.config files always contains a section called <appSettings> within it, all the options (key/value) used by the application are specified. The editor have to read all options in the Web.config dynamically and allow users to modify and save the value of each option that is specified here. The keys must be placed (in the user interface) in the same order as they appear inside the Web.config file.

Below you can find an example of the <appSettings> section.

```XML
<appSettings>
 […]
  <!-- URL del WebService -->
  <add key="WebServiceURL" value="http://dragon:92/WebXX.dll/check" />
  <!-- E-mail addresses to send errors (comma separated) -->
  <add key="ErrorNotificationEmailAddress" value="user@company.com" />
  <!-- E-mail address used as sender for outcoming mail to customer -->
  <add key="CompanyEmailAddress" value="no-reply@company.com" />
  <!-- Company name -->
  <add key="CompanyName" value="Company Name spa" />
  <!-- Language: flags, dropdownlist -->
  <add key="SelectLanguageStyle" value="dropdownlist" />
  <!-- Path for PDF files -->
  <add key="PdfPath" value="" />
  <!-- Enable/disable news -->
  <add key="ShowNews" value="true" />
  <!-- Enable/disable recent news -->
  <add key="ShowRecentNews" value="true" />
  <!-- Number of recent news -->
  <add key="NumberOfRecentNews" value="2" />
 […]
<appSettings>
```

Goals to achieve
----------------


Folders organization
--------------------



For any questions or doubts don't hesitate to contact me.

Enjoy!
