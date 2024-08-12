import { Given, When, Then } from "@cucumber/cucumber";
import { expect } from "@playwright/test";
import { BrowserUtility } from "../../utilities/BrowserUtility.js";
import { PageManager } from "../../globalPagesSetup.js";

// WRITE YOUR STEP DEFINITIONS HERE...

Then('user should see {string}  on left top corner of the screen', async function (string) {
    const books = await PageManager.dashboardPage.bookLink.innerText();
    expect(books).toBe(string);
  });


  Then('user should see {string} on left top corner of the screen', async function (string) {
    const borrowingBooks = await PageManager.dashboardPage.borrowingBookLink.innerText();
    expect(borrowingBooks).toBe(string);
  });