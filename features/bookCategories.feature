@lib-03
Feature: Book Categories

    As a user, I want to see 21 book categories, so I can filter my favorite books.

    #* AC1: users should see 21 book categories When users click the Book Categories drop down
    #*      ALL, Action and Adventure, Anthology, Classic, Comic and Graphic Novel, Crime and Detective, Drama
    #*      , Fable, Fairy Tale, Fan-Fiction, Fantasy, Historical Fiction, Horror, Science Fiction, Humor
    #*      , Biography/Autobiography ,Romance, Short Story, Essay, Memoir, Poetry



    @lib-03-01
    # TODO: verify users see 21 book categories
    Scenario Outline: verify users see 21 book categories
        Given user is already on the login page
        And user is already logged in as "<user-type>"
        When user clicks in the book link
        And user clicks on the Book Categories dropdown box
        Then user should see 21 book categories
        Examples:
            | user-type |
            | admin     |
            | student   |

    @lib-03-02
    # TODO: Verify that all 21 book categories are displayed under the Book Categories drop down
    Scenario Outline: verify users see 21 book categories
        Given user is already on the login page
        And user is already logged in as "<user-type>"
        When user clicks in the book link
        And user clicks on the Book Categories dropdown box
        Then book category name "<category>" should be included in the categories
        Examples:
            | user-type | category                |
            | admin     | ALL                     |
            | admin     | Action and Adventure    |
            | admin     | Anthology               |
            | admin     | Classic                 |
            | admin     | Comic and Graphic Novel |
            | admin     | Crime and Detective     |
            | admin     | Drama                   |
            | admin     | Fable                   |
            | admin     | Fairy Tale              |
            | admin     | Fan-Fiction             |
            | admin     | Fantasy                 |
            | admin     | Historical Fiction      |
            | admin     | Horror                  |
            | admin     | Science Fiction         |
            | admin     | Humor                   |
            | admin     | Biography/Autobiography |
            | admin     | Romance                 |
            | admin     | Short Story             |
            | admin     | Essay                   |
            | admin     | Memoir                  |
            | admin     | Poetry                  |
            | student   | ALL                     |
            | student   | Action and Adventure    |
            | student   | Anthology               |
            | student   | Classic                 |
            | student   | Comic and Graphic Novel |
            | student   | Crime and Detective     |
            | student   | Drama                   |
            | student   | Fable                   |
            | student   | Fairy Tale              |
            | student   | Fan-Fiction             |
            | student   | Fantasy                 |
            | student   | Historical Fiction      |
            | student   | Horror                  |
            | student   | Science Fiction         |
            | student   | Humor                   |
            | student   | Biography/Autobiography |
            | student   | Romance                 |
            | student   | Short Story             |
            | student   | Essay                   |
            | student   | Memoir                  |
            | student   | Poetry                  |

