class SupabaseReverseSelectConstants {
  static const String officeSelectFields = 'id, office';
  static const String departmentSelectFields = 'id, name, office:office_id($officeSelectFields)';
  static const String permissionGroupSelectFields = 'id, name';
  static const String permissionsSelectFields = 'id, name, description, permission_group:group_id($permissionGroupSelectFields)';
  static const String roleSelectFields = 'id, name, department:department_id($departmentSelectFields), permissions($permissionsSelectFields)';
  static const String employeeSelectFields = 'id, employee_id, first_name, last_name, email, job_title, phone_extension, workstation_ip, role:role_id($roleSelectFields)';
  static const String cveSelectFileds = 'id, number';
  static const String portsSelectFileds = 'id, number, protocol';
  static const String vulnerabilitySelectFields = 'id, description, problem, details, severity, potential_resolution, analyst_resolution, cve_list:cve($cveSelectFileds), ports($portsSelectFileds)';
}