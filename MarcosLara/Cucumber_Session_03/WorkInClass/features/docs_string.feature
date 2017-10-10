Feature: Docs String

  Scenario: Ban Unscrupulous Users
    #When I behave unscrupulously

    Then I should receive an email containing:
"""
{"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}}
"""
    #And my account should be locked
