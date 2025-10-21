[33mcommit fdb951c84778f0e396fb13ae2882a596850a8f67[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m)[m
Author: Guilherme <guilhermegeorgetti4@gmail.com>
Date:   Wed Sep 24 13:32:06 2025 -0300

    Dashboard de Contratos

[1mdiff --git a/.idea/.gitignore b/.idea/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..26d3352[m
[1m--- /dev/null[m
[1m+++ b/.idea/.gitignore[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32m# Default ignored files[m
[32m+[m[32m/shelf/[m
[32m+[m[32m/workspace.xml[m
[1mdiff --git a/.idea/Dashboard Contratos.iml b/.idea/Dashboard Contratos.iml[m
[1mnew file mode 100644[m
[1mindex 0000000..5bde923[m
[1m--- /dev/null[m
[1m+++ b/.idea/Dashboard Contratos.iml[m	
[36m@@ -0,0 +1,10 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<module type="PYTHON_MODULE" version="4">[m
[32m+[m[32m  <component name="NewModuleRootManager">[m
[32m+[m[32m    <content url="file://$MODULE_DIR$">[m
[32m+[m[32m      <excludeFolder url="file://$MODULE_DIR$/.venv" />[m
[32m+[m[32m    </content>[m
[32m+[m[32m    <orderEntry type="jdk" jdkName="Python 3.13 (Dashboard Contratos)" jdkType="Python SDK" />[m
[32m+[m[32m    <orderEntry type="sourceFolder" forTests="false" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m</module>[m
\ No newline at end of file[m
[1mdiff --git a/.idea/dbnavigator.xml b/.idea/dbnavigator.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..eff8b2e[m
[1m--- /dev/null[m
[1m+++ b/.idea/dbnavigator.xml[m
[36m@@ -0,0 +1,436 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project version="4">[m
[32m+[m[32m  <component name="DBNavigator.Project.DDLFileAttachmentManager">[m
[32m+[m[32m    <mappings />[m
[32m+[m[32m    <preferences />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="DBNavigator.Project.DatabaseAssistantManager">[m
[32m+[m[32m    <assistants />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="DBNavigator.Project.DatabaseFileManager">[m
[32m+[m[32m    <open-files />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="DBNavigator.Project.Settings">[m
[32m+[m[32m    <connections />[m
[32m+[m[32m    <browser-settings>[m
[32m+[m[32m      <general>[m
[32m+[m[32m        <display-mode value="TABBED" />[m
[32m+[m[32m        <navigation-history-size value="100" />[m
[32m+[m[32m        <show-object-details value="false" />[m
[32m+[m[32m        <enable-sticky-paths value="true" />[m
[32m+[m[32m        <enable-quick-filters value="false" />[m
[32m+[m[32m      </general>[m
[32m+[m[32m      <filters>[m
[32m+[m[32m        <object-type-filter>[m
[32m+[m[32m          <object-type name="SCHEMA" enabled="true" />[m
[32m+[m[32m          <object-type name="USER" enabled="true" />[m
[32m+[m[32m          <object-type name="ROLE" enabled="true" />[m
[32m+[m[32m          <object-type name="PRIVILEGE" enabled="true" />[m
[32m+[m[32m          <object-type name="CHARSET" enabled="true" />[m
[32m+[m[32m          <object-type name="TABLE" enabled="true" />[m
[32m+[m[32m          <object-type name="VIEW" enabled="true" />[m
[32m+[m[32m          <object-type name="JSON_VIEW" enabled="true" />[m
[32m+[m[32m          <object-type name="MATERIALIZED_VIEW" enabled="true" />[m
[32m+[m[32m          <object-type name="NESTED_TABLE" enabled="true" />[m
[32m+[m[32m          <object-type name="COLUMN" enabled="true" />[m
[32m+[m[32m          <object-type name="INDEX" enabled="true" />[m
[32m+[m[32m          <object-type name="CONSTRAINT" enabled="true" />[m
[32m+[m[32m          <object-type name="DATASET_TRIGGER" enabled="true" />[m
[32m+[m[32m          <object-type name="DATABASE_TRIGGER" enabled="true" />[m
[32m+[m[32m          <object-type name="SYNONYM" enabled="true" />[m
[32m+[m[32m          <object-type name="SEQUENCE" enabled="true" />[m
[32m+[m[32m          <object-type name="PROCEDURE" enabled="true" />[m
[32m+[m[32m          <object-type name="FUNCTION" enabled="true" />[m
[32m+[m[32m          <object-type name="PACKAGE" enabled="true" />[m
[32m+[m[32m          <object-type name="TYPE" enabled="true" />[m
[32m+[m[32m          <object-type name="TYPE_ATTRIBUTE" enabled="true" />[m
[32m+[m[32m          <object-type name="ARGUMENT" enabled="true" />[m
[32m+[m[32m          <object-type name="JAVA_CLASS" enabled="true" />[m
[32m+[m[32m          <object-type name="JAVA_FIELD" enabled="true" />[m
[32m+[m[32m          <object-type name="JAVA_METHOD" enabled="true" />[m
[32m+[m[32m          <object-type name="JAVA_RESOURCE" enabled="true" />[m
[32m+[m[32m          <object-type name="DIMENSION" enabled="true" />[m
[32m+[m[32m          <object-type name="CLUSTER" enabled="true" />[m
[32m+[m[32m          <object-type name="DBLINK" enabled="true" />[m
[32m+[m[32m          <object-type name="CREDENTIAL" enabled="true" />[m
[32m+[m[32m          <object-type name="AI_PROFILE" enabled="true" />[m
[32m+[m[32m        </object-type-filter>[m
[32m+[m[32m      </filters>[m
[32m+[m[32m      <sorting>[m
[32m+[m[32m        <object-type name="COLUMN" sorting-type="NAME" />[m
[32m+[m[32m        <object-type name="FUNCTION" sorting-type="NAME" />[m
[32m+[m[32m        <object-type name="PROCEDURE" sorting-type="NAME" />[m
[32m+[m[32m        <object-type name="ARGUMENT" sorting-type="POSITION" />[m
[32m+[m[32m        <object-type name="TYPE ATTRIBUTE" sorting-type="POSITION" />[m
[32m+[m[32m      </sorting>[m
[32m+[m[32m      <default-editors>[m
[32m+[m[32m        <object-type name="VIEW" editor-type="SELECTION" />[m
[32m+[m[32m        <object-type name="PACKAGE" editor-type="SELECTION" />[m
[32m+[m[32m        <object-type name="TYPE" editor-type="SELECTION" />[m
[32m+[m[32m      </default-editors>[m
[32m+[m[32m    </browser-settings>[m
[32m+[m[32m    <navigation-settings>[m
[32m+[m[32m      <lookup-filters>[m
[32m+[m[32m        <lookup-objects>[m
[32m+[m[32m          <object-type name="SCHEMA" enabled="true" />[m
[32m+[m[32m          <object-type name="USER" enabled="false" />[m
[32m+[m[32m          <object-type name="ROLE" enabled="false" />[m
[32m+[m[32m          <object-type name="PRIVILEGE" enabled="false" />[m
[32m+[m[32m          <object-type name="CHARSET" enabled="false" />[m
[32m+[m[32m          <object-type name="TABLE" enabled="true" />[m
[32m+[m[32m          <object-type name="VIEW" enabled="true" />[m
[32m+[m[32m          <object-type name="JSON VIEW" enabled="true" />[m
[32m+[m[32m          <object-type name="MATERIALIZED VIEW" enabled="true" />[m
[32m+[m[32m          <object-type name="INDEX" enabled="true" />[m
[32m+[m[32m          <object-type name="CONSTRAINT" enabled="true" />[m
[32m+[m[32m          <object-type name="DATASET TRIGGER" enabled="true" />[m
[32m+[m[32m          <object-type name="DATABASE TRIGGER" enabled="true" />[m
[32m+[m[32m          <object-type name="SYNONYM" enabled="false" />[m
[32m+[m[32m          <object-type name="SEQUENCE" enabled="true" />[m
[32m+[m[32m          <object-type name="PROCEDURE" enabled="true" />[m
[32m+[m[32m          <object-type name="FUNCTION" enabled="true" />[m
[32m+[m[32m          <object-type name="PACKAGE" enabled="true" />[m
[32m+[m[32m          <object-type name="TYPE" enabled="true" />[m
[32m+[m[32m          <object-type name="JAVA CLASS" enabled="true" />[m
[32m+[m[32m          <object-type name="INNER CLASS" enabled="true" />[m
[32m+[m[32m          <object-type name="JAVA FIELD" enabled="true" />[m
[32m+[m[32m          <object-type name="JAVA METHOD" enabled="true" />[m
[32m+[m[32m          <object-type name="JAVA PARAMETER" enabled="true" />[m
[32m+[m[32m          <object-type name="JAVA RESOURCE" enabled="true" />[m
[32m+[m[32m          <object-type name="DIMENSION" enabled="false" />[m
[32m+[m[32m          <object-type nam