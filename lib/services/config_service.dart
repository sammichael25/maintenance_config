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
  String serversCollectionId;
  String checklistCollectionId;
  String disksCollectionId;
  String cpuCollectionId;
  String ramCollectionId;
  String networksCollectionId;
  String antivirusCollectionId;
  String eventsCollectionId;
  String servicesCollectionId;
  String errorsCollectionId;
  String activeDirectoryGroupsCollectionId;
  String userInfoCollectionId;
  String groupsCollectionId;
  String rolesCollectionId;
  String permissionsCollectionId;
  String applicationInfoCollectionId;
  String applicationInfoDocId;
  String superAdminUserId;
  String superAdminUserEmail;
  String superAdminRole;
  String superAdminGroup;
  String defaultRoleForNewUsers;
  String sendEmailVerificationfunctionId;
  String loginFunctionId;
  String getUserFunctionId;
  String getUserEmailFunctionId;
  String deleteUserFunctionID;
  String searchADUserFunctionID;
  String addNewUserFunctionID;
  String getAllUsersFunctionID;
  String getAllRolesFunctionID;
  String getAllGroupsFunctionID;
  String getAllPermissionsFunctionID;
  String updateUserInfoFunctionID;
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
  String cveSearchUrl;

  Configs({
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
    required this.serversCollectionId,
    required this.checklistCollectionId,
    required this.disksCollectionId,
    required this.cpuCollectionId,
    required this.ramCollectionId,
    required this.networksCollectionId,
    required this.antivirusCollectionId,
    required this.eventsCollectionId,
    required this.servicesCollectionId,
    required this.errorsCollectionId,
    required this.activeDirectoryGroupsCollectionId,
    required this.userInfoCollectionId,
    required this.groupsCollectionId,
    required this.rolesCollectionId,
    required this.permissionsCollectionId,
    required this.applicationInfoCollectionId,
    required this.applicationInfoDocId,
    required this.superAdminUserId,
    required this.superAdminUserEmail,
    required this.superAdminRole,
    required this.superAdminGroup,
    required this.defaultRoleForNewUsers,
    required this.sendEmailVerificationfunctionId,
    required this.loginFunctionId,
    required this.getUserFunctionId,
    required this.getUserEmailFunctionId,
    required this.deleteUserFunctionID,
    required this.searchADUserFunctionID,
    required this.addNewUserFunctionID,
    required this.getAllUsersFunctionID,
    required this.getAllRolesFunctionID,
    required this.getAllGroupsFunctionID,
    required this.getAllPermissionsFunctionID,
    required this.updateUserInfoFunctionID,
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
    required this.cveSearchUrl,
  });

  factory Configs.fromYMLMap(YamlMap map) {
    return Configs(
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
      serversCollectionId: map['serversCollectionId'] as String,
      checklistCollectionId: map['checklistCollectionId'] as String,
      disksCollectionId: map['disksCollectionId'] as String,
      cpuCollectionId: map['cpuCollectionId'] as String,
      ramCollectionId: map['ramCollectionId'] as String,
      networksCollectionId: map['networksCollectionId'] as String,
      antivirusCollectionId: map['antivirusCollectionId'] as String,
      eventsCollectionId: map['eventsCollectionId'] as String,
      servicesCollectionId: map['servicesCollectionId'] as String,
      errorsCollectionId: map['errorsCollectionId'] as String,
      activeDirectoryGroupsCollectionId: map['activeDirectoryGroupsCollectionId'] as String,
      userInfoCollectionId: map['userInfoCollectionId'] as String,
      groupsCollectionId: map['groupsCollectionId'] as String,
      rolesCollectionId: map['rolesCollectionId'] as String,
      permissionsCollectionId: map['permissionsCollectionId'] as String,
      applicationInfoCollectionId: map['applicationInfoCollectionId'] as String,
      applicationInfoDocId: map['applicationInfoDocId'] as String,
      superAdminUserId: map['superAdminUserId'] as String,
      superAdminUserEmail: map['superAdminUserEmail'] as String,
      superAdminRole: map['superAdminRole'] as String,
      superAdminGroup: map['superAdminGroup'] as String,
      defaultRoleForNewUsers: map['defaultRoleForNewUsers'] as String,
      sendEmailVerificationfunctionId: map['sendEmailVerificationfunctionId'] as String,
      loginFunctionId: map['loginFunctionId'] as String,
      getUserFunctionId: map['getUserFunctionId'] as String,
      getUserEmailFunctionId: map['getUserEmailFunctionId'] as String,
      deleteUserFunctionID: map['deleteUserFunctionID'] as String,
      searchADUserFunctionID: map['searchADUserFunctionID'] as String,
      addNewUserFunctionID: map['addNewUserFunctionID'] as String,
      getAllUsersFunctionID: map['getAllUsersFunctionID'] as String,
      getAllRolesFunctionID: map['getAllRolesFunctionID'] as String,
      getAllGroupsFunctionID: map['getAllGroupsFunctionID'] as String,
      getAllPermissionsFunctionID: map['getAllPermissionsFunctionID'] as String,
      updateUserInfoFunctionID: map['updateUserInfoFunctionID'] as String,
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
      cveSearchUrl: map['cveSearchUrl'] as String,
    );
  }
  
}
