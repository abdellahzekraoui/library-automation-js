@lib-05
Feature: Main modules of the application

    As a student, I want to access to the main modules of the app.

    #* AC: students should see 2 modules: Books, Borrowing Books

    @lib-05-01
    # TODO: Verify students can see 2 main modules (Books and Borrowing Books)
    Scenario Outline: verify Student can see 2 main modules (Books and Borrowing Books)
        Given user is already on the login page
        When user is already logged in as "<user-type>"
        Then  user should see "Books"  on left top corner of the screen
        Then user should see "Borrowing Books" on left top corner of the screen
        Examples:
            | user-type |
            | student   |

#? Should there be more scenarios for this user story? feel free to add more scenarios

