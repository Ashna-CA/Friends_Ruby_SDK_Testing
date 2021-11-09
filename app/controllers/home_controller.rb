class HomeController < ApplicationController
  def index
    import time
    import openapi_client
    from openapi_client.api import api_api
    from openapi_client.model.create_loan_failure import CreateLoanFailure
    from openapi_client.model.internal_server_error import InternalServerError
    from openapi_client.model.error_unauthorized import ErrorUnauthorized
    from openapi_client.model.create_loan_success import CreateLoanSuccess
    from openapi_client.model.error_bad_request import ErrorBadRequest
    from pprint import pprint
    # Defining the host is optional and defaults to https://colend-uat-01-api.credavenue.in/colending
    # See configuration.py for a list of all supported configuration parameters.
    configuration = openapi_client.Configuration(
        host = "https://colend-uat-01-api.credavenue.in/colending"
    )
    
    # The client must configure the authentication and authorization parameters
    # in accordance with the API server security policy.
    # Examples for each auth method are provided below, use the example that
    # satisfies your auth use case.
    
    # Configure API key authorization: api_key
    configuration.api_key['api_key'] = 'de707678e98ec2d3637b0c889153353a4a07f8a2582ac769c74f4455dddc154b'
    
    # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    # configuration.api_key_prefix['api_key'] = 'Bearer'
    
    # Enter a context with an instance of the API client
    with openapi_client.ApiClient(configuration) as api_client:
        # Create an instance of the API class
        api_instance = api_api.APIApi(api_client)
        client_name = "upwards" # str | Name of the client
        body = {
          "disbursement_accounts": [
            {
                "account_type": "borrower",
                "account_no": "50100216777664",
                "ifsc_code": "SBIN0020018",
                "amount": 100000,
                "account_name": "john",
                "bank_name": "SBI",
                "bank_branch_name": "chennai",
                "entity_type": "Dealer"
            }],
    
          "client_customer_id": "client_customer_id_69",
          "employment_type": "salaried",
          "video_image_link": [
              "https://cdn.pixabay.com/photo/2017/06/22/20/22/green-2432374_1280.jpg"
          ],
          "loan_subtype": "Fresh",
          "disbursement_type": "Single",
          "scheme_code": "scheme_code_23",
          "customer_type": "individual",
          "customer_category": "salaried",
          "first_name": "John",
          "middle_name": "William",
          "last_name": "Doe",
          "spouse_or_father_name": "James",
          "mobile_number": "9876543210",
          "date_of_birth": "1990-05-14",
          "age": 31,
          "gender": "M",
          "current_address": "No 119, First Street",
          "current_district": "Chennai",
          "current_city": "Chennai",
          "current_state": "tamil_nadu",
          "current_pincode": 600001,
          "years_of_stay_in_current_address": 4,
          "residence_type_current_address": "rented",
          "permanent_address": "No 119, First Street",
          "permanent_district": "Chennai",
          "permanent_city": "Chennai",
          "permanent_state": "tamil_nadu",
          "permanent_pincode": 600001,
          "years_of_stay_in_permanent_address": 4,
          "net_monthly_income": 34567.0,
          "residence_type_permanent_address": "rented",
          "email": "john_doe@gmail.com",
          "marital_status": "single",
          "religion": "NA",
          "nationality": "Indian",
          "father_name": "Adam",
          "mother_name": "Eve",
          "spouse_name": "NA",
          "education_qualification": "M.Sc Computer Science",
          "annual_income": 500000.0,
          "no_of_dependants": 2,
          "occupation": "salaried",
          "perfios_report": "NA",
          "bureau_report_json": "NA",
          "pan_number": "YPVHM0157Q",
          "pan_link": [
              "https://cdn.pixabay.com/photo/2017/06/22/20/22/green-2432374_1280.jpg"
          ],
          "other_kyc_number": "NA",
          "other_kyc_link": "NA",
          "dscr": 3.3,
          "foir": 2.3,
          "ltr": 2.34,
          "abb_emi_ratio": 3.4,
          "psl_flag": "edw",
          "psl_description": "wedwed",
          "psl_code": "wedwe",
          "psl_proof_link": [
              "https://cdn.pixabay.com/photo/2017/06/22/20/22/green-2432374_1280.jpg"
          ],
          "photo_link": [
              "https://cdn.pixabay.com/photo/2017/06/22/20/22/green-2432374_1280.jpg"
          ],
      
          "employment_details_name": "ABC",
          "employment_details_address": "9th Floor, ABC Building, Chennai",
          "employment_details_years_of_experience": 4.5,
          "employment_details_designation": "Software Developer",
          "payslip_link": [
              "https://cdn.pixabay.com/photo/2017/06/22/20/22/green-2432374_1280.jpg"
          ],
          "tds_certificate_link": [
              "https://cdn.pixabay.com/photo/2017/06/22/20/22/green-2432374_1280.jpg"
          ],
          "commercial_bureau_score_link": [
              "https://cdn.pixabay.com/photo/2017/06/22/20/22/green-2432374_1280.jpg"
          ],
          "bureau_json_link": [
              "https://reqres.in/api/products/3"
          ],
          "employer_tier": "tier_4",
          "permanent_city_tier": "tier_2",
          "current_city_tier": "tier_1",
          "total_overdue_amount_12months": 322.4,
          "loan_amount_settled_12months": 324234.4,
          "nature_of_loan_settled_1": "wedw",
          "nature_of_loan_settled_2": "wdw",
          "total_emi_bounces": 0,
          "emi_bounces_6months": 0,
          "perfios_link": [
              "https://cdn.pixabay.com/photo/2017/06/22/20/22/green-2432374_1280.jpg"
          ],
          "name_of_bureau": "cibil",
          "bureau_vintage": 200,
          "commercial_bureau_score": 100,
          "bureau_score": 643,
          "total_existing_obligations": 0,
          "credit_card_limit": 0,
          "no_of_credit_cards": 1,
          "total_number_of_loans": 3,
          "total_number_of_unsecured_loans": 0,
          "number_of_enquiries_6months": 0,
          "number_of_enquiries_3months": 0,
          "bureau_report_link": [
              "https://cdn.pixabay.com/photo/2017/06/22/20/22/green-2432374_1280.jpg"
          ],
          "partner_score_on_the_customer": 86,
          "abb": "2",
          "abd": "2",
          "bank_name": "SBI",
          "bank_account_name": "John Doe",
          "bank_account_no": "50100216773463",
          "bank_branch_name": "nandanam",
          "bank_ifsc_code": "SBIN0020018",
          "client_loan_id": "AB129TEST125_13",
          "application_id": "AB129TEST_appid125_13",
          "principal_amount": 100000.0,
          "schema_code": "scheme_code_24",
          "interest_rate": 26.9,
          "tenure": 3,
          "cibil_score": "700",
          "purpose": "NA",
          "repayment_frequency": "monthly",
          "tenure_frequency": "monthly",
          "number_of_repayments": 3,
          "repayment_mode": "CASH",
          "umrn": "DWEDW34343",
          "personal_email_id": "test@abc.com",
          "official_email_id": "test@cde.com",
          "first_repayment_date": "2021-09-01",
          "pf_amount": 45000.0,
          "charges": 0.0,
          "processing_fee": 90,
          "insurance_charges": 80,
          "partner_branch_code": "NA",
          "partner_branch_name": "NA",
          "product_id": "UPWARD_PRODUCT",
          "product_type": "NA",
          "loan_type": "secured",
          "video_kyc_profile_id": "NA",
          "video_kyc_account_id": "CL-Upwards",
          "video_kyc_key": "8362536te803j",
          "insurance_nominee_details": "NA",
          "insurance_relationship": "NA",
          "insurance_premium": "NA",
          "insurance_amount": 100000.0,
          "total_insurance_amount": 100000,
          "insurance_policy_number": "NA",
          "biometric_auth_id": {
            "k" : "v"
        }
        } # {str: (bool, date, datetime, dict, float, int, list, str, none_type)} | 
    
        # example passing only required values which don't have defaults set
        try:
            # Create Loan
            api_response = api_instance.create_loan(client_name, body)
            pprint(api_response)
        except openapi_client.ApiException as e:
            print("Exception when calling APIApi->create_loan: %s\n" % e)
    
  end
end
