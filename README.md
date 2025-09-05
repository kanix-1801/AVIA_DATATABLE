# Datatable

Lightning Web Component for Flow Screens:       **Datatable**

**This component allows the user to configure and display a datatable in a Flow screen.**

Additional components packaged with this LWC:

                Apex Classes:       ers_QueryNRecords
                                    ers_QueryNRecordsTest
                                    ers_DatatableController 
                                    ers_DatatableControllerTest
                                    ers_EncodeDecodeURL
                                    ers_EncodeDecodeURLTest

                LWCs:               ers_comboboxColumnType
                                    ers_customLightningDatatable
                                    ers_datatableUtils
                                    ers_datatableCPE
                                    ers_richTextColumnType

                Custom Objects:     ers_datatableConfig (replaced in v3.5.0 by FlowTableViewDefinition from the FlowScreenComponentsBasePack)

                Page Layouts:       ers_datatableConfig Layout

                Tabs:               ers_datatableConfig

                StaticResources:    ers_customLightningDatatableStyles

                Flows:              Datatable_Configuration_Wizard4

                Permission Set:     USF Flow Screen Component - Datatable          
                                                  
**Documentation:**  https://unofficialsf.com/datatable-lightning-web-component-for-flow-screens-2/ 
  
**Created by:**	Eric Smith  
**Date:**		2019 - 2024
  
LinkedIn: 	https://www.linkedin.com/in/ericrsmith2  
Salesforce: https://trailblazer.me/id/ericsmith  
Blog:		https://ericsplayground.wordpress.com/blog/  
Twitter: 	https://twitter.com/esmith35  

---
**You must install these components FIRST in order to install and use the Datatable component**     
FlowActionsBasePack Version 3.18.0 or later  
FlowScreenComponentsBasePack Version 3.3.8 or later  
  
Both Base Packs are available here:   
https://unofficialsf.com/flow-action-and-screen-component-basepacks/
  
---
**Install Datatable**  
[Version 4.3.6 (Production or Developer)](https://login.salesforce.com/packaging/installPackage.apexp?p0=04t5G000004fzCcQAI)   
[Version 4.3.6 (Sandbox)](https://test.salesforce.com/packaging/installPackage.apexp?p0=04t5G000004fzCcQAI)
 
---
**Starting with the Winter '21 Release, Salesforce requires that a User's Profile or Permission Set is given specific permission to access any @AuraEnabled Apex Method.**  

Release Notes: https://releasenotes.docs.salesforce.com/en-us/winter21/release-notes/rn_lc_restrict_apex_authenticated_users.htm  

This will affect any Aura or Lightning Web Component that uses @AuraEnabled Apex Classes.  

In order to use **datatable**, permission must be given to access the following Apex Classes:  

    ers_QueryNRecords   
    ers_DatatableController
    ers_EncodeDecodeURL  

A Permission Set (**USF Flow Screen Component - Datatable**) is included with the install package.  
    
---
# Release Notes 
  
  ## 2/28/25 -  Eric Smith -     Version 4.3.6  
**Updates:**  
**Bug Fixes:** 
-   Fixed bug where table gets reset after removing the last row  
-   Fixed bug introduced in v4.3.3 affecting percent fields when inline editing  
-   Fixed bug where clearing a column filter crashed when a row action column was enabled  
-   Fixed bug where row action button preview was showing an incorrect icon  
-   Fixed Filter/Search bug introduced in 4.3.5 when a Date field column was present  
-     NOTE: Enter dates in the search box in the YYYY-MM-DD format  
  
  ## 1/25/25 -  Eric Smith -     Version 4.3.5  
**Updates:**  
-   Added a Standard Row Action in addition to the existing Remove Row action
-   Added a new OutputActionedRow attribute which provides the record that has the most recent row action performed on it  
-     (Using this reactive attribute along with components like Screen Actions and Flow Launcher, you can perform almost anything you want when clicking on a row action)
-   Row Actions can now be displayed as either an Icon or a configurable Button with or without an Icon  
-   Improved reactivity for the row actions  
-   Increased the maximum column width from 1000px to 1500px  
-   Updated the CPE to allow hard-coded references for the record collection and pre-selected records so outputs from the Filter and Transform elements can be referenced directly  
-     (This requires v3.3.8 or later of the FlowScreenComponentsBasePack)  
  
**Bug Fixes:** 
-   Date field values that get adjusted by the timzoneoffset now are stored as YYYY-MM-DD - prior versions stored as a datetime which caused issues with collection processors and action butttons
-   Clear SelectedRowKeyValue when no rows are selected  
-   When both pagination and single row selection are enabled, clear prior selection before setting the new selection  
-   Fixed search/filter errors when using special characters by escaping special characters in filter or search terms 
-   Generate correct url for record hyperlinks when running in a playground org  
-   Output edited ApexDefined rows when changes are saved (Issue #1565)  
-   Force preselected rows to the first record in the collection when single row selection is enabled  
  
  ## 11/24/24 -  Eric Smith -     Version 4.3.4  
**Updates:**  
-   Add option to sort columns as case insensitive (AbC vs ACb) - default false for backwards compatibility
-   Update component API versions from 60.0 to 62.0
  
**Bug Fixes:** 
-   Fixed bug where error would occur when the remove row action was in the first column  
  
  ## 11/21/24 -  Eric Smith -     Version 4.3.3  
**Updates:**  
-   Added option to column filters to filter rows where the value in that column is blank 
-   Changed the minimum number of characters in the search term box to start searching from 2 to 1   
  
**Bug Fixes:** 
-   Removed processing from 4.3.1 and 4.3.2 related to Winter 25 base component bug for flexible width columns  
-   Fixed bug where lookup field columns were not holding the flex attribute  
-   Fixed bug where changing or clearing a search or filter value after an edit wouldn't display all of the original records 
-   Fixed bug where record selections would be cleared when filters were cleared  
-   Fixed bug where wrong record links could be generated in a developer org  
-   Fixed reactivity bug where an error could occur when a previously selected record was no longer included in the current record collection  
-   Fixed bug where reactive collection processors would fail trying to read the selected rows collection when a lookup field was included  
-   PR#1575 - Fernando-Fernandez - If keyfield is a field that doesn't actually exist, don't identify every record as selected  
  
## 09/29/24 -  Eric Smith -     Version 4.3.1 & 4.3.2  
**Updates:**   
-   Column headers will now Clip or Wrap based on the settings for the individual column 
-   User's can no longer manually change the width of Flex enabled columns while interacting with the datatable  
-  
**Bug Fixes:** 
-   Fixed bug introduced in Winter '25 affecting columns set with Flexible Widths enabled  
  
## 07/22/24 -  Eric Smith -     Version 4.3.0  
**Updates:**   
-   Added additional output attributes for Apex Defined records (outputRemovedRowsString & outputRemainingRowsString)  
-   Added an option to display the number of selected records in the table header 
-  
**Bug Fixes:** 
-   Fixed bug where first column reference was off if the remove row action was on the left 
-  
## 07/09/24 -  Eric Smith -     Version 4.2.1  
**Updates:** 
-   New Feature: Add a Remove Row action as the first or last column in a Datatable.  
-       New outputs include a collection and a count of the removed rows.
-       You can specify the icon and color for the action button.  
-       You can specify the maximum number of rows that can be removed.  
-   Selected Rows are now persistent when Paginating, Searching, Filtering, Sorting, and Removing!  
-   A new output attribute (outputRemainingRows) will provide all records passed into the table with all edits made to those records, less all records (if any) that were removed  
-   Implemented a default setting (SHOW_DEBUG_INFO = false) to hide record details from console and debug logs  
-       Source code changes in ers_datatableUtils.js, ers_DatatableController.cls & ers_QueryNRecords.cls  
-   Console.log statements are now identified with the Datatable's header label  
  
**Bug Fixes:** 
-   Fixed bug where hyperlinks would open the flow rather than the referenced record  
-   Fixed bug where a column filter would hang if there was no filter on the first column     
  
## 04/06/24 -  Eric Smith -     Version 4.2.0  
**Updates:** 
-   Added optional pagination  
-       Adds a selectable number of Records per Page input to the header - default value 10  
-       Adds a navigation footer with a editable input showing the current page # and total number of pages  
-       The footer also includes Prev & Next buttons as well as optional First & Last Buttons  
-       The appropriate buttons are disabled if the user is on the first or the last page  
-       New pagination input prompts and button labels are translatable Custom Labels
-       (Initial release does not support retaining selected records when sorting, filtering, searching, paginating) 
-   Made the Table Header Label reactive  
-   Moved the Configure Columns button from the top to the bottom of the Table Formatting section of the CPE  
  
**Bug Fixes:**  
-   Fixed bug where the maximum number of rows to be displayed gets cleared  
-   Fixed bug where an invalid link would show when an Apex Defined Lookup field was empty (@spyros-michailidisspyros-michailidis PR#1524)
-   Fixed install issue with ers_DatatableController.cls if the target org has a class named "Test" 
-   Fixed a bug where Date fields from External Objects would show as blank (@philipnovak-pentair PR#1529) 
  
## 02/06/24 -  Eric Smith -     Version 4.1.6 
**Bug Fixes:**  
-   Fixed several Spring '24 "Cannot read properties of undefined..." errors
-   Allow a full row search when empty cells are present (thanks to clev32 PR#1478)

## 10/12/23 -  Eric Smith -    Version 4.1.5 
**Updates:** 
-   Made the following changes to support passing of Datatable output collections into my reactive Collection Processor screen components 
-       Remove the "attributes" attribute from each record's details 
-       Process all Datetime fields in each record even if they are not displayed in the Datatable

## 06/14/23 -  Eric Smith -    Version 4.1.4 
**Bug Fixes:**  
-   Fixed issue with tables showing as empty if row selection was disabled 

## 06/13/23 -  Eric Smith -    Version 4.1.3 
**Bug Fixes:**  
-   Fixed issue where Datatables fed by DataFetcher were defaulting to single row selection only 
  
## 06/04/23 -  Eric Smith -    Version 4.1.1 
**Updates:** 
-   Added reactivity for Apex-Defind objects (Pre-Selected Rows are not reactive) 
-   Made the placeholder for 'Enter search term ...' a translatable label 
 
**Bug Fixes:**  
-   Fixed reactivity for DataFetcher on initial load of screen 
 
## 05/21/23 -  Eric Smith -    Version 4.1.0 
**Updates:** 
-   Added new Column Wizard header action to allow a column width to have a fixed or floating width
-       When the Flex option is selected, that column and all other flexed columns will evenly expand or contract to fill the available space
-       This gives you more control over columns that you specifically want to be narrow or wide while allowing the other columns to find the best fit
-       This option can be selected individually or can be applied to all columns at once
-   Added a new Search Bar option
-       The Datatable will support both a Search Bar and individual Column Filters
-       NOTE: When the Search Bar is enabled, the Header is required and will appear slightly larger than a table without a Search Bar
-       NOTE: When the Search Bar is enabled, the border can't be disabled and it will appear with rounded rather than square corners
-   When the number of displayed records are filtered and/or reduced based on a search term, the header will show both the filtered count and the total record count
-   Updated maximum record count from 1000 to 2000 
-   Switched Column Wizard Flow in the CPE from Aura initiated to LWC
-       Provides cleaner exit behavior and eliminates conflicts with development mode and clickjack protection
-       NOTE: If debug mode is turned on, there will be no sample records in the Configuration Wizard datatable
-       NOTE: Requires that the Datatable Configuration Wizard flow be Activated on installation
-   Added a Clear All Filters button that is displayed when any column filters are applied
-       NOTE: This can be disabled by selecting the Hide Clear Selection/Filter Buttons option in the Table Behavior section
-   Display spinner instead of empty table message while processing the records
-   Updated API versions to 57.0 
  
**Bug Fixes:**  
-   Fixed invalid format error when entering a filter value for a Name column when it was shown as a hyperlink 
-   Addressed occasional DST issues by changing the default date prepended to Time fields to be the current date 
  
 ## 11/02/22 -  Eric Smith -    Version 4.0.12
**Bug Fixes:**  
-   Fixed .slice is not a function error  
-   PR #1229 - fix regression bug with disableNavigateNext and suppressBottomBar attributes (JonTronki)
-   Fixed issue caused by the Winter 23 Patch 12 where a table with a Date column would cause an error if a single row was selected or any record was edited
  
## 09/09/22 -  Eric Smith -     Version 4.0.11
**Bug Fixes:**  
-   Fixed Version # display in CPE  
  
## 09/09/22 -  Eric Smith -     Version 4.0.10
**Bug Fixes:**  
-   Fixed URL for links in Flow Builder for Objects w/ a standard name field  
-   Fixed intermittent failure when closing the Column Wizard flow modal  
  
## 09/07/22 -  Eric Smith -     Version 4.0.9
**Bug Fixes:**  
-   Get correct clickable links for LWR Experience Sites 
-   Fixed intermittant error with isDisableSuppressBottomBar
-   Winter 23 - Fixed clickable links while running in the Flow Builder
-   Winter 23 - numberOfRowsEdited now outputs the correct value
-   Winter 23 - Fixed datetime columns not displaying any values
-   Test Class fix for ers_DatatableController
-   Multiple date field edits will no longer clear the edited rows output when the bottom bar is suppressed
 
## 07/09/22 -  Eric Smith -     Version 4.0.8
**Bug Fixes:**  
-   Removed Virtual Rendering as it would not display tables with a single record 
 
## 07/07/22 -  Eric Smith -     Version 4.0.7
**Updates:** 
-   Removed View All and Modify All Permissions on the FlowTableViewDefinition Object in the included Permission Set
 
**Bug Fixes:** 
-   Fixed issue with 4.0.6 package being released as a beta 
 
## 07/04/22 -  Eric Smith -     Version 4.0.6(beta) 
**Updates:** 
-   Enabled the new Virtual Rendering attributes to ensure smooth scrolling (New in Summer ’22) 
-   Added link support for Enhanced Domain orgs when running in a Sandbox or in the Flow Builder 
 
**Bug Fixes:** 
-   Fixed the ability to edit date values when date columns are using Type Attributes 
 
## 06/29/22 -  Eric Smith -     Version 4.0.6 
**Updates:** 
-   Removed View All and Modify All Permissions on the FlowTableViewDefinition Object in the included Permission Set
 
## 05/22/22 -  Eric Smith -     Version 4.0.5 
**Updates:** 
-   Added new Output Attribute - selectedRowKeyValue
    This outputs the value of the KeyField(Id) when single row selection is enabled.  This is designed to support inputs to other
    components on the same screen when Reactive Screens are implemented 
-   Enhanced how Column Wizard configuration files are created and updated 
-   Saved Column Wizard configuration files now support >255 characters per attribute 
 
**Bug Fixes:** 
-   Fix Column Wizard error when reselecting after saving a flow 
-   Column Wizard configuration files now store the column widths values
-   Fix test class for orgs without Orders enabled
 
## 05/15/22 -  Eric Smith -     Version 4.0.4 
**Bug Fixes:** 
-   Changed the Date timezone offset to start at Noon instead of Midnight in order to avoid DST issues with the offset
 
## 04/14/22 -  Alex Edelstein - Version 4.0.3 
**Updates:** 
-   Updated to use the new v3 versions of the Base Packs
 
## 03/25/22 -  Eric Smith -    Version 3.5.1 
**Bug Fixes:** 
-   Fixed a bug where table sorting, edits and column widths were getting reset when using the datatable on a screen with Sections or in an
    org with the Reactive Screens pilot activated
 
## 03/15/22 -  Eric Smith -    Version 3.5.0 
**Updates:** 
-   Eliminate padding/margin for Table Border (Thanks to Jerry Poon)
-   Add option to Navigate Next when selecting the Save button for inline editing (Thanks to Idan Damari)
-   Rearranged the order of the options in the Table Behavior Section
-   Changed the Configuration Wizard to use the new FlowTableViewDefinition object from the ScreenComponentsBasePack instead of the ers_datatableConfig object
-   Added Created and Modified Date columns to the Configuration Record selection datatable
-   Added optional Record Count to Table Header
-   Added option to suppress the currency conversion introduced in v3.1.1
  
**Bug Fixes:** 
-   Fixed bug when using a % character in a column label [Issue-1069]
  
## 02/16/22 -  Eric Smith -    Version 3.4.5 
**Updates:** 
-   Updated all component API versions to 53.0 (Winter '22)
-   Changed tableData attribute to support Reactive Screens (pilot) see PR_944
-   Replaced hardcoded messages with Custom Labels to allow for translations
 
**Bug Fixes:** 
-   Fixed horizontal scroll bar disappearing after a field edit (This will increase the table's height while the footer is present) [Issue-890]
-   Fix for clicking the dropdown arrow not expanding the selections when editing a picklist [Issue-883]
-   Fix lookup links when the datatable is on a non-home Community(Experience) page
-   Reapply timezone offset on date fields for edited records 
-   Fix for currency conversion on manually created records when the object has no records [Issue-1047]
-   Fix conditional display of Clear Selection button
-   Allow the clearing of a header icon in the Column Wizard
-   Fix pre-selected records being highlighted and passed through to the output if no additional selections are made

## 02/11/22 -  Alex Edelstein -    Version 3.4.4 
**Updates:**
-   Updated default table border styling

**Bug Fixes:** 
-   Misc Fixes

## 01/30/22 – Alex Edelstein – Version 3.4.2
**Updates:** 
-   Supports a JSON datastring as an input and output 
-   Supports reactive screens pilot 
-   Visible Left border where there wasn’t one previously 
 
**Bug Fixes:** 
-   Misc Fixes
 
## 08/13/21 -  Eric Smith -    Version 3.3.2 
**Updates:** 
-   Converted interface elements to Custom Labels so they can be Translated 
-   Added support for Screen Readers for the visually impaired
-   Updated all component API versions to 52.0
 
**Bug Fixes:** 
-   Added missing variable in the CPE to support automaticOutputVariables
-   Check for CurrencyConversion returning null values before committing any changes
-   Fix filtering on Date and Datetime column types
-   Keep Checkbox selection instead of Radio Button when table size is 1 and Single Row Selection is not activated
 
## 07/18/21 -  Eric Smith -    Version 3.3.0 
**Updates:** 
-   Added a custom object (ers_datatableConfig) to provide the ability to Save and Retrieve column configuration attributes
-   Added an attribute to allow the datatable to overflow its container (helpful when editing picklists on a table with only a few records)
-   Changed the number of rows in the Configuration Wizard datatable from 10 to 6
 
**Bug Fixes:** 
-   Fixed an error that ocurred when trying to save an edited row from a datatable that contained a time field 
-   Fixed a bug that kept Date and Time fields from displaying in datatables when the User's locale displays numbers with a . separator
-   Rows with editable picklist fields will not default to a taller height (Even without picklist fields, all rows will still be slightly taller if any fields are editable)
 
## 06/26/21 -  Eric Smith -    Version 3.2.4 
**Updates:** 
-   New Output Attribute for the Number of Rows Edited (Because even when no rows are edited, the OutputEditedRows attribute is not null)
-   The Datatable CPE now supports Automatic Output Variables in the Flow Builder
 
**Bug Fixes:** 
-   Orgs with multi-currency enabled can now add currency rollup and currency formula fields to the datatable 
-   The edit picklist dropdown will overflow the displayed table if necessary (Only if the Table Height attribute is not set)
-   The dropdown picklist values when editing will show the picklist labels instead of the picklist API names (The selected edit prior to selecting Save will show as the API name)
 
## 06/13/21 -  Eric Smith -    Version 3.2.3 
**Updates:** 
-   When the running User doesn't have Read access to the Datatable's SObject, Record Type Id for Picklist Values is ignored
    and all picklist values will be available when editing a picklist field
-   Fields that are Read Only to the running User can still be edited when the Flow is running in System Mode
 
 ## 06/11/21 -  Eric Smith -    Version 3.2.2 
**Updates:** 
-   Editable picklist fields now show a pencil icon when editable (Same behavior as all other field edits) 
-   Icon Pickers in the CPE and Configure Column Wizard have been updated to the latest version 
-   Added a new attribute to optionaly hide the Clear Selection button that appears on a table with radio button selection
 
**Bug Fixes:** 
-   Fixed alignment of picklist fields when selecting Center or Right alignment 
-   Adjust edited Date fields by the running User's timezone offset to keep the correct day 
-   Enforced no edits on fields such as Rollups and Formulas 
-   Fixed occasional error message about the not_suppressNameFieldLink attribute  
-   Fixed v3.2.1 bug where pre-selected rows did not display as selected  
 
## 05/18/21 -  Eric Smith -    Version 3.2.1 
**Updates:** 
-   Picklist values can now be restricted to a single record type 
 
**Bug Fixes:** 
-   Text formula fields will now wrap correctly (This had regressed in v3.2.0) 
-   Output Selected Rows is no longer null if the screen containing the Datatable also has a Section 
 
## 05/03/21 -  Eric Smith -    Version 3.2.0 
**Updates:** 
-   Picklist fields are now editable.  Big thanks to Jerry Poon and Guillaume Davies.
    (Does not yet support Dependent picklists nor filtering by Record Type)
-   Changed Table Header font from 1.5em to 1.2em to match the format of List Views
-   Renamed components used by Datatable to reduce conflicts and allow easier upgrading from older versions
 
**Bug Fixes:**
-   Do not display a header if there is a Header Label value but the Display Table Header attribute is not checked
-   Make output attributes available to visibility filters (this was inadvertantly removed from some prior releases)
-   Better handling of number & percent fields from different locales (Thanks to GDuboc-hub)
    (Edited percent fields must be the actual number ie: .25 = 25%)
    (Edited percent fields lose 2 decimal places during the edit from what is defined for the field)
-   Edited date fields will stay in the User's local time-zone rather than switching to UTC
 
## 04/15/21 -  Eric Smith -    Version 3.1.1 
**Updates:** 
-   Moved the "Display ALL Objects for Selection" choice in the CPE from Advanced to Data Source
-   Added an attribute to hide all column header actions such as Sort, Clip/Wrap Text and Filters
-   If Multi-Currency is enabled, convert currency field values to the User's currency (Thanks to Novarg1)
 
**Bug Fixes:**
-   Text formula fields will now wrap correctly
-   Display ALL Objects for Selection attribute is now persistent
-   Input data is Apex-Defined attribute is now persistent
-   The number of pre-selected rows will now not exceed the maximum number of records to be displayed attribute value
-   Don't require the key field to be explicitly listed in the Column Edits attribute for Apex Defined Objects
-   Clear Selection button will no longer appear on single row tables when Disallow row selection is checked
-   Clear Selection button will clear the Output Selected Record String for Apex Defined Objects
-   Fixed Column Filter on Checkbox Fields when the filter value is 'false' 
-   Fixed vertical alignment of table header text
  
## 02/27/21 -  Eric Smith -    Version 3.0.10 
**Updates:** 
-   Record links updated to support a Flow running in a Community
-   Added a new Table Behavior option to specify if Links should open in the same Tab
-   Allow the use of a Flow variable to set the Maximum Number of Rows value 
-   Changed display of error messages to match Salesforce standard
-   Allow full TypeAttibutes for Date fields (This will switch datetime fields to UTC)
-   Added a Permission Set that gives access to the @AuraEnabled Apex Classes that are part of the Datatable Flow Screen LWC
  
**Bug Fixes:**
-   Fixed links when running in a Sandbox whose name started with the letter c
-   Stop requiring Checkbox column if any columns are selected for editing 
-   Set the Number of Rows Selected to 0 when clearing the row selections
-   Retain the setting when clearing a checkbox in the CPE
-   Fixed error when trying to exit the CPE after selecting the Apex Defined Object option
-   Fixed delay when selecting a large (>200) number of records
-   Fixed delay when editing multiple (>20) number of records
-   Fixed issue with being unable to edit Apex-Defined columns unless Type was specified
-   Made sure that the Key Field could not be edited
-   Allow regular Textarea fields of 255 characters or less to be edited
  
## 01/19/21 -  Eric Smith -    Version 3.0.9 
**Updates:** 
-   Add option to Display Row Numbers (default=false)
-   Allow setting of Table Header for Apex Defined Objects
-   Display the current Version # at the bottom of the CPE
  
**Bug Fixes:**
-   Allow a TypeAttribute to set the Maximum number of decimal places to display to be less than the field default Minimum
-   Fix initial attribute display in the CPE when using an Apex Defined Object
-   Fix attribute corruption when updating multiple times
  
## 01/08/21 -  Eric Smith -    Version 3.0.8 
**Updates:** 
-   Relocate to correct packaging org
-   Users with version 3.0.3 through 3.0.6 will need to uninstall & reinstall
  
## 01/06/21 -  Eric Smith -    Version 3.0.6  
**Bug Fixes:**  
-   Fixed checkbox behavior in the CPE 
-   Fixed an error selecting checkboxes in the CPE  
-   Fixed an error with attributes not being able to be cleared  
-   Fixed an error with Textarea not showing Rich Text correctly  
   
## 01/01/21 -  Eric Smith -    Version 3.0.5 
**Updates:**
-   Added Icon Pickers to the CPE and Column Wizard  (Requires FlowScreenComponentBasePack v2.1.2 or later)
-   Changed 'Display ALL Objects for Selection' checkbox to default to unchecked  
 
**Bug Fixes:**
-   Removed field names from Empty Table Header
-   Fixed "Apex CPU time limit exceeded" error (FlowActionsBasePack v2.9 or greater)    
  
## 12/14/20 -  Eric Smith -    Version 3.0.0 
**Updates:**
-   New Custom Property Editor for Configuration  
-   Clear button added when using single record selection  
-   Fixed row number display when >99 rows
 
**Bug Fixes:**
-   Sandbox URLs with __c in their name will now provide valid links for lookups  
  
## 10/14/20 -  Eric Smith -    Version 2.47 
**Bug Fix:**
-   Display correct icon for Table Header (was always showing standard:account icon)
  
## 10/07/20 -  Eric Smith -    Version 2.46 
**Updates:**
-   Added new Output Parameter for the # of Selected Records 
-   (this can be used for conditional visibility on the same screen as the datatable)   
-   New Selected Record Output Parameter - Returns an SObject record if just a single record is selected 
-   New Required? Parameter - Requires the user to select at least 1 row to proceed  
-   New option to suppress the link for the object's standard Name field  
-   New optional Table Header with Table Icon and Table Label Parameters  
-   Switched DualListbox to the fbc version  
-   Added spinners while sorting & filtering data  
-   Allow case insensitive field API names  
-   Allow custom field API names w/o the __c suffix  
 
**Bug Fixes:**
-   Display Picklist Labels instead of API Names for Picklist and Multipicklist fields  
-   Added a Clear Selection button for tables with just a single record
  
## 09/22/20 -  Eric Smith -    Version 2.45 
**Bug Fix:**
-   Fixed inability to edit some field types (introduced by v2.44)
  
## 09/20/20 -  Kevin Hart -    Version 2.44 
**Updates:**
-   Added ability to display Rich Text fields  
 
**Bug Fix:** - Eric Smith
-   Fixed error when selecting column action of WrapText or ClipText  
                
## 09/01/20 -  Eric Smith -    Version 2.43 
**Bug Fix:**
-   Update Percent Field Handling and set Formula Fields to be Non-Editable  
              
## 08/26/20 -  Eric Smith -    Version 2.42 
**Bug Fixes:**
-   Update Time fields with the User's Timezone Offset value so they display as intended  
-   Fix field type so Datetime fields display correctly    
                
## 08/14/20 -  Eric Smith -    Version 2.41 
**Bug Fix:**
-   Fixed issue with time and date-time fields being displayed as a day earlier     
               
## 08/11/20 -  Eric Smith -    Version 2.40 
**Updates:**
-   Added attribute to allow the suppression of the record link on the SObject's 'Name' field  
 
**Bug Fix:**
-   Fixed code so the 'Name' Field column now sorts correctly  
              
## 07/31/20 -  Eric Smith -    Version 2.39 
**Updates:**
-   Added Datatable Configuration Helper Flow  
**REQUIRES:**
-   Flow Base Components (https://unofficialsf.com/introducing-flowbasecomponents/)  
-   Dual List Box (https://unofficialsf.com/duallistbox/)   
-   Remote Site Setting (Setup)
                  
## 07/31/20 -  Andy Hass -     Version 2.38 
**Updates:**
-   Added support for Checkbox Field Type
                
## 07/07/20 -  Eric Smith -    Version 2.37 
**Bug Fix:**
-   Fixed issue with the date being displayed as a day earlier   
              
## 07/01/20 -  Eric Smith -    Version 2.36 
**Updates:**
-   Now displays the primary "Name" field as a Link (textWrap = true)  
-   Added button in Config Mode to round off Column Width values  
              
## 06/30/20 -  Eric Smith -    Version 2.35 
**Updates:**
-   Extended Configuration Mode to handle Column Alignments, Labels, Widths, Allow Edit & Allow Filter  
-   Added Configuration Mode buttons to select all columns for Edit and/or Filter  
-   Selecting an attribute string now copies the contents into the system Clipboard  
                              
## 06/24/20 -  Eric Smith -    Version 2.34 
**Updates:**
-   Added Configuration Mode parameter (Used by Datatable Configuration Flow)  
 
 **Bug Fix:**
-   Fixed issue with column widths resetting when filtering  
  
## 06/19/20 -  Eric Smith -    Version 2.33 
**Updates:**
-   Removed default value for Table Height
 
 **Bug Fix:**
 -   Fixed issue with lookup fields being blank in the first record                                                    
  
## 06/03/20 -  Eric Smith -    Version 2.32 
**Bug Fix:**
-   Fixed error when editing more than one column in a single row while suppressing the Cancel/Save buttons
  
## 06/03/20 -  Eric Smith -    Version 2.31 
**Updates:**
-   Changed SObjectController to SObjectController2 to allow for easier deployment to orgs that already have an earlier version of the datatable component    
                                                                                   
## 06/03/20 -  Eric Smith -    Version 2.3 
**Updates:**
-   Changed SObjectController to SObjectController2 to allow for easier deployment to orgs that already have an earlier version of the datatable component
  
## 06/03/20 -  Eric Smith -    Version 2.2 
**Enhancements:**
-   Added datatable border attribute
 
**Updates:**
-   Fixed attribute parsing, Fixed Spinner
  
## 06/01/20 -  Eric Smith -    Version 2.1 
**Enhancements:**
-   Updated with features from v1.2 & v1.3                                                
  
## 04/22/20 -  Eric Smith -    Version 2.0 (Summer '20) 
**Enhancements:**
-   Summer '20 New Feature - Dynamic Object Type
-   One version of the component now supports ALL Standard & Custom SObjects
  
## 05/23/20 -  Eric Smith -    Version 1.3 
**Updates:**
-   Added support for a serialized JSON string of records of a user defined object
-   Added an attribute to specify the height of the datatable
-   Bug Fix - Fixed error when editing multiple rows           
  
## 05/06/20 -  Eric Smith -    Version 1.2 
**Updates:**
-   Handle lookup Objects without a Name field & 
-   Trap non-updatable Master/Detail fields
  
## 04/14/20 -  Eric Smith -    Version 1.1 
**Enhancements:**
-   New Column Attribute to support column filtering  
  
## 04/01/20 -  Eric Smith -    Version 1.0 
**Features:**
-   The only required paramters are the SObject collection of records and a list of field API names  
-   The field label and field type will default to what is defined in the object  
-   Numeric fields will display with the correct number of decimal places as defined in the object  
-   Lookup fields are supported and will display the referenced record's name field as a clickable link  
-   All columns are sortable, including lookups (by name)  
-   The selection column can be multi-select (Checkboxes), single-select (Radio Buttons), or hidden  
-   A collection of pre-selected rows can be passed into the component  
-   Inline editing is supported with changed values passed back to the flow  
-   Unlike the original datatable component, only the edited records will be passed back to the flow  
-   The maximum number of rows to display can be set by the user  
-   Optional attribute overrides are supported and can be specified by list, column # or by field name, including:  
 
                - Alignment               
                - Editable
                - Header Icon
                - Header Label
                - Initial Column Width
                - Custom Cell Attributes including those with nested values {name: {name:value}}               
                - Custom Type Attributes including those with nested values {name: {name:value}}
                - Other Custom Column Attributes including those with nested values {name: {name:value}}
  
---
#   A V I A _ D A T A T A B L E  
 