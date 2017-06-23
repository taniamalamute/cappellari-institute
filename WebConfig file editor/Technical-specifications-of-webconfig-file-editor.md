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

Each connection string is also usually preceded by an explanatory comment enclosed by this pattern < !--  -- >, which should be inserted by WebConfig editor for greater user clarity. The comment is not always present in the input file.


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

Each connection string is usually preceded by an explanatory comment enclosed by this pattern < !--  -- >, which should be inserted by WebConfig editor for greater user clarity. The comment is not always present in the input file.


Membership
----------
Web.config file always contains a section called <membership> which have a section called <Provider> where the AspNetSqlMembershipProvider property is located. The WebConfig editor must be able to set the value of the "applicationName" field.

```XML
<membership>
  <providers>
    <clear />
    <add name="AspNetSqlMembershipProvider"     
    type="System.Web.Security.SqlMembershipProvider" 
    connectionStringName="ApplicationServices" enablePasswordRetrieval="false" 
    enablePasswordReset="true" requiresQuestionAndAnswer="false"  
    requiresUniqueEmail="false" maxInvalidPasswordAttempts="20" 
    minRequiredPasswordLength="6" minRequiredNonalphanumericCharacters="0" 
    passwordAttemptWindow="10" applicationName="APPNAME" />
  </providers>
</membership>
```

Profile
-------
Web.config file always contains a section called <profile> which have a section called <Providers> where the AspNetSqlProfileProvider property is located. The WebConfig editor must be able to set the value of the "applicationName" field.

```XML
<profile>
  <providers>
    <clear />
    <add name="AspNetSqlProfileProvider" type="System.Web.Profile.SqlProfileProvider"   
     connectionStringName="ApplicationServices"  
     applicationName="APPNAME" />
  </providers>
</profile>
```

Role manager
------------
Web.config file always contains a section called <roleManager> which have a section called <Providers> where the AspNetSqlRoleProvider and AspNetWindowsTokenRoleProvider properties are located. The WebConfig editor must be able to set the value of the "applicationName" of these fields.

```XML
<roleManager enabled="false">
  <providers>
    <clear />
    <add name="AspNetSqlRoleProvider" type="System.Web.Security.SqlRoleProvider" 
    connectionStringName="ApplicationServices" 
    applicationName="APPNAME" />
    <add name="AspNetWindowsTokenRoleProvider" 
    type="System.Web.Security.WindowsTokenRoleProvider" 
    applicationName="APPNAME" />
  </providers>
</roleManager>
```

For Membership, Profile and Role manager sections, the vale of applicationName (in a single Web.config file) is always the same. For better usability, visualize this value ones in the editor UI.


Goals to achieve
----------------


Folders organization
--------------------
In the [cappellari-institute/WebConfig file editor/](https://github.com/segovoni/cappellari-institute/tree/master/WebConfig%20file%20editor) folder there is one sub-folder for each of you, the subfolder name is composed by the first character of your lastname plus the first character of your firstname. For example, my subfolder is GS. Put all your files in your subfolder (you can also create subfolders in your folder), try to do a well organization of your files.


For any questions or doubts don't hesitate to contact me.

Enjoy!
