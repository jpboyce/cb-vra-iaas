
IAAS Service Account
- Domain user
- Local admin on IAAS system
- No double quotes (") in password
- Logon As A Service permissions
- dbo permissions on IAAS database (if account already exists in SQL Server)
- sysadmin permissions on IAAS SQL (if account already isn't in SQL Server)

IIS App Pool Identity
- Account used must have Logon As Batch Job permissions

IAAS Database Credentials
- If database is created separtately, the Windows or SQL user only needs dbo permissions on the database
- If not, the account needs sysadmin access

IaaS Database Security Passphrase
- No double quotes (") in Passphrase

vRealize Automation Administrator Password
- The vRealize Automation administrator password cannot contain a trailing equals ( = ) character

Host Names and IP Addresses
- All vRealize Automation machines in your installation must be able to resolve each other by fully qualified domain name
- Windows machines that host the Model Manager Web service, Manager Service, and Microsoft SQL Server database must be able to resolve each other by Windows Internet Name Service (WINS) name
- vRealize Automation machine names begin with letters (a–z, A–Z), end with letters or digits (0–9), and have only letters, digits, or hyphens ( - ) in the middle
- The underscore character ( _ ) must not appear in the host name or anywhere in the FQDN
- A best practice is to reserve and use static IP addresses for all vRealize Automation appliances and IaaS Windows servers

IaaS Windows Servers
- Microsoft .NET Framework 4.5.2 or later
- Microsoft PowerShell 2.0, 3.0, or 4.0, based on your version of Windows
- IaaS servers use TLS for authentication, which is enabled by default on some Windows servers
  - Version 7.3 of vRealize Automation supports TLS 1.2
- Enable the Distributed Transaction Coordinator (DTC) service

IaaS Web Server
- Install 64-bit Java 1.8 or later (JRE)
- Set the JAVA_HOME environment variable to the Java installation folder
- Verify that %JAVA_HOME%\bin\java.exe is available
- Configure Internet Information Services (IIS)
  - Internet Information Services (IIS) roles
    - Windows Authentication
      - Static Content
      - Default Document
      - ASPNET 3.5 and ASPNET 4.5
      - ISAPI Extensions
      - ISAPI Filter
    - IIS Windows Process Activation Service roles
      - Configuration API
      - Net Environment
      - Process Model
      - WCF Activation (Windows 2008 variants only)
      - HTTP Activation
      - Non-HTTP Activation (Windows 2008 variants only)
      - (Windows 2012 variants: Go to Features > .Net Framework 3.5 Features > Non-HTTP Activation)
    - IIS Authentication settings
      - Set the following non-defaults.
        - Windows Authentication enabled
        - Anonymous Authentication disabled
      - Do not change the following defaults.
        - Negotiate Provider enabled
        - NTLM Provider enabled
        - Windows Authentication Kernel Mode enabled
        - Windows Authentication Extended Protection disabled
        - For certificates using SHA512, TLS1.2 must be disabled on Windows 2012 variants

IaaS Manager Service Host
  - The Manager Service host must be able to resolve the NETBIOS name of the SQL Server database host.
  - Configure Internet Information Services (IIS) according to the following table.
    - Internet Information Services (IIS) role
      - Windows Authentication
      - Static Content
      - Default Document
      - ASPNET 3.5 and ASPNET 4.5
      - ISAPI Extensions
      - ISAPI Filter
    - IIS Windows Process Activation Service roles
      - Configuration API
      - Net Environment
      - Process Model
      - WCF Activation (Windows 2008 variants only)
      - HTTP Activation
      - Non-HTTP Activation (Windows 2008 variants only)
        (Windows 2012 variants: Go to Features > .Net Framework 3.5 Features > Non-HTTP Activation)
    - IIS Authentication settings
      - Set the following non-defaults.
        - Windows Authentication enabled
        - Anonymous Authentication disabled
      - Do not change the following defaults.
        - Negotiate Provider enabled
        - NTLM Provider enabled
        - Windows Authentication Kernel Mode enabled
        - Windows Authentication Extended Protection disabled
        - For certificates using SHA512, TLS1.2 must be disabled on Windows 2012 variants

IaaS SQL Server Host
  - Cannot use default SQL Server 2016 130 compatibility mode.  use 100 or 120 compatibility mode
  - AlwaysOn Availability Group (AAG) is only supported with SQL Server 2016 Enterprise
  - Java bits as above
  - Install a supported SQL version (for vRA 7.3.x: 2012, 2012 SP2/3/4, 2014, 2014 SP1/2, 2016.  No express versions)
  - Enable TCP/IP protocol for SQL Server
  - identify accounts and add permissions in SQL
