// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: library_names
library ConfigService;

import 'dart:io';

import 'package:yaml/yaml.dart';

class ConfigService {
  static late File configFile;
  static late String yamlString;
  static late dynamic configMap;
  static late Configs configs;

  static configServiceInit(String yamlString) async {
    // configFile = File('$path/server_config.yaml');
    // yamlString = await configFile.readAsString();
    configMap = loadYaml(yamlString);
    configs = Configs.fromYMLMap(configMap);
  }
}

class Configs {
  String appUpdateFileLocation;
  String host;
  String login;
  String password;
  String port;
  String basedn;
  String projectId;
  String endpoint;
  String functionAPIKey;
  String databaseId;
  String loggingDatabaseId;
  String appImagesBucketId;
  String penVulScansBucketId;
  String loginImageId;
  String republicLogoFull;
  String republicLogoSmall;
  String superAdminUserId;
  String superAdminUserEmail;
  String superAdminRole;
  String superAdminGroup;
  String defaultRoleForNewUsers;
  String sendEmailVerificationfunctionId;
  String loginFunctionId;
  String getUserFunctionId;
  String getUserEmailFunctionId;
  String deleteEmployeeFunctionID;
  String searchADUserFunctionID;
  String addNewEmployeeFunctionID;
  String getAllUsersFunctionID;
  String getAllRolesFunctionID;
  String getAllGroupsFunctionID;
  String getAllPermissionsFunctionID;
  String editEmployeeFunctionID;
  String addNewGroupFunctionID;
  String updateGroupFunctionID;
  String deleteGroupFunctionID;
  String vulnerabilityImportFunctionID;
  String supabaseUrl;
  String supabaseAnonKey;
  String serversTable;
  String vulnerabilitiesTable;
  String portsTable;
  String cveTable;
  String permissionGroupsTable;
  String permissionsTable;
  String officesTable;
  String departmentsTable;
  String rolesTable;
  String employeesTable;
  String systemInfoTable;
  String serversForVulnerabilityView;
  String vulnerabilitiesForServerView;
  String cveSearchUrl;

  Configs({
    required this.appUpdateFileLocation,
    required this.host,
    required this.login,
    required this.password,
    required this.port,
    required this.basedn,
    required this.projectId,
    required this.endpoint,
    required this.functionAPIKey,
    required this.databaseId,
    required this.loggingDatabaseId,
    required this.appImagesBucketId,
    required this.penVulScansBucketId,
    required this.loginImageId,
    required this.republicLogoFull,
    required this.republicLogoSmall,
    required this.superAdminUserId,
    required this.superAdminUserEmail,
    required this.superAdminRole,
    required this.superAdminGroup,
    required this.defaultRoleForNewUsers,
    required this.sendEmailVerificationfunctionId,
    required this.loginFunctionId,
    required this.getUserFunctionId,
    required this.getUserEmailFunctionId,
    required this.deleteEmployeeFunctionID,
    required this.searchADUserFunctionID,
    required this.addNewEmployeeFunctionID,
    required this.getAllUsersFunctionID,
    required this.getAllRolesFunctionID,
    required this.getAllGroupsFunctionID,
    required this.getAllPermissionsFunctionID,
    required this.editEmployeeFunctionID,
    required this.addNewGroupFunctionID,
    required this.updateGroupFunctionID,
    required this.deleteGroupFunctionID,
    required this.vulnerabilityImportFunctionID,
    required this.supabaseUrl,
    required this.supabaseAnonKey,
    required this.serversTable,
    required this.vulnerabilitiesTable,
    required this.portsTable,
    required this.cveTable,
    required this.permissionGroupsTable,
    required this.permissionsTable,
    required this.officesTable,
    required this.departmentsTable,
    required this.rolesTable,
    required this.employeesTable,
    required this.systemInfoTable,
    required this.serversForVulnerabilityView,
    required this.vulnerabilitiesForServerView,
    required this.cveSearchUrl,
  });

  factory Configs.fromYMLMap(YamlMap map) {
    return Configs(
      appUpdateFileLocation: map['appUpdateFileLocation'] as String,
      host: map['host'] as String,
      login: map['login'] as String,
      password: map['password'] as String,
      port: map['port'] as String,
      basedn: map['basedn'] as String,
      projectId: map['projectId'] as String,
      endpoint: map['endpoint'] as String,
      functionAPIKey: map['functionAPIKey'] as String,
      databaseId: map['databaseId'] as String,
      loggingDatabaseId: map['loggingDatabaseId'] as String,
      appImagesBucketId: map['appImagesBucketId'] as String,
      penVulScansBucketId: map['penVulScansBucketId'] as String,
      loginImageId: map['loginImageId'] as String,
      republicLogoFull: map['republicLogoFull'] as String,
      republicLogoSmall: map['republicLogoSmall'] as String,
      superAdminUserId: map['superAdminUserId'] as String,
      superAdminUserEmail: map['superAdminUserEmail'] as String,
      superAdminRole: map['superAdminRole'] as String,
      superAdminGroup: map['superAdminGroup'] as String,
      defaultRoleForNewUsers: map['defaultRoleForNewUsers'] as String,
      sendEmailVerificationfunctionId: map['sendEmailVerificationfunctionId'] as String,
      loginFunctionId: map['loginFunctionId'] as String,
      getUserFunctionId: map['getUserFunctionId'] as String,
      getUserEmailFunctionId: map['getUserEmailFunctionId'] as String,
      deleteEmployeeFunctionID: map['deleteUserFunctionID'] as String,
      searchADUserFunctionID: map['searchADUserFunctionID'] as String,
      addNewEmployeeFunctionID: map['addNewUserFunctionID'] as String,
      getAllUsersFunctionID: map['getAllUsersFunctionID'] as String,
      getAllRolesFunctionID: map['getAllRolesFunctionID'] as String,
      getAllGroupsFunctionID: map['getAllGroupsFunctionID'] as String,
      getAllPermissionsFunctionID: map['getAllPermissionsFunctionID'] as String,
      editEmployeeFunctionID: map['updateUserInfoFunctionID'] as String,
      addNewGroupFunctionID: map['addNewGroupFunctionID'] as String,
      updateGroupFunctionID: map['updateGroupFunctionID'] as String,
      deleteGroupFunctionID: map['deleteGroupFunctionID'] as String,
      vulnerabilityImportFunctionID: map['vulnerabilityImportFunctionID'] as String,
      supabaseUrl: map['supabaseUrl'] as String,
      supabaseAnonKey: map['supabaseAnonKey'] as String,
      serversTable: map['serversTable'] as String,
      vulnerabilitiesTable: map['vulnerabilitiesTable'] as String,
      portsTable: map['portsTable'] as String,
      cveTable: map['cveTable'] as String,
      permissionGroupsTable: map['permissionGroupsTable'] as String,
      permissionsTable: map['permissionsTable'] as String,
      officesTable: map['officesTable'] as String,
      departmentsTable: map['departmentsTable'] as String,
      rolesTable: map['rolesTable'] as String,
      employeesTable: map['employeesTable'] as String,
      systemInfoTable: map['systemInfoTable'] as String,
      serversForVulnerabilityView: map['serversForVulnerabilityView'] as String,
      vulnerabilitiesForServerView: map['vulnerabilitiesForServerView'] as String,
      cveSearchUrl: map['cveSearchUrl'] as String,
    );
  }
}
