@isTest
public class GetObjectFieldLabelsTest {
    
    @isTest
    static void testValidFields() {
        // Valid standard object and fields
        GetObjectFieldLabels.Input input = new GetObjectFieldLabels.Input();
        input.objectApiName = 'Account';
        input.inputFieldList = 'Name, AccountNumber';

        List<GetObjectFieldLabels.Input> inputs = new List<GetObjectFieldLabels.Input>{input};
        List<GetObjectFieldLabels.Output> results = GetObjectFieldLabels.validateFields(inputs);

        System.assertEquals(1, results.size());
        GetObjectFieldLabels.Output result = results[0];

        System.assertEquals('Name,AccountNumber', result.validFields);
        System.assertEquals('', result.invalidFields);
        System.assertEquals(2, result.validFieldsArray.size());
        System.assert(result.validFieldsArray.contains('Name'));
        System.assert(result.validFieldsArray.contains('AccountNumber'));
    }

    @isTest
    static void testInvalidFields() {
        // Valid object but with some invalid fields
        GetObjectFieldLabels.Input input = new GetObjectFieldLabels.Input();
        input.objectApiName = 'Account';
        input.inputFieldList = 'Name, InvalidField1, InvalidField2';

        List<GetObjectFieldLabels.Input> inputs = new List<GetObjectFieldLabels.Input>{input};
        List<GetObjectFieldLabels.Output> results = GetObjectFieldLabels.validateFields(inputs);

        System.assertEquals(1, results.size());
        GetObjectFieldLabels.Output result = results[0];

        System.assertEquals('Name', result.validFields);
        System.assertEquals('InvalidField1,InvalidField2', result.invalidFields);
        System.assertEquals(1, result.validFieldsArray.size());
        System.assert(result.validFieldsArray.contains('Name'));
    }

    @isTest
    static void testInvalidObjectApiName() {
        // Invalid object API name
        GetObjectFieldLabels.Input input = new GetObjectFieldLabels.Input();
        input.objectApiName = 'InvalidObject';
        input.inputFieldList = 'Name, AccountNumber';

        List<GetObjectFieldLabels.Input> inputs = new List<GetObjectFieldLabels.Input>{input};
        List<GetObjectFieldLabels.Output> results = GetObjectFieldLabels.validateFields(inputs);

        System.assertEquals(1, results.size());
        GetObjectFieldLabels.Output result = results[0];

        System.assertEquals(null, result.validFields);
        System.assertEquals(null, result.invalidFields);
        System.assertEquals(null, result.validFieldsArray);
    }

    @isTest
    static void testBlankObjectApiName() {
        // Blank objectApiName
        GetObjectFieldLabels.Input input = new GetObjectFieldLabels.Input();
        input.objectApiName = '';
        input.inputFieldList = 'Name';

        List<GetObjectFieldLabels.Input> inputs = new List<GetObjectFieldLabels.Input>{input};
        List<GetObjectFieldLabels.Output> results = GetObjectFieldLabels.validateFields(inputs);

        System.assertEquals(1, results.size());
        GetObjectFieldLabels.Output result = results[0];

        System.assertEquals(null, result.validFields);
        System.assertEquals(null, result.invalidFields);
        System.assertEquals(null, result.validFieldsArray);
    }

    @isTest
    static void testBlankFieldList() {
        // Blank field list
        GetObjectFieldLabels.Input input = new GetObjectFieldLabels.Input();
        input.objectApiName = 'Account';
        input.inputFieldList = '';

        List<GetObjectFieldLabels.Input> inputs = new List<GetObjectFieldLabels.Input>{input};
        List<GetObjectFieldLabels.Output> results = GetObjectFieldLabels.validateFields(inputs);

        System.assertEquals(1, results.size());
        GetObjectFieldLabels.Output result = results[0];

        System.assertEquals(null, result.validFields);
        System.assertEquals(null, result.invalidFields);
        System.assertEquals(null, result.validFieldsArray);
    }
}