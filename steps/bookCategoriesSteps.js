import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from '@playwright/test';
import { BrowserUtility } from '../utilities/BrowserUtility.js';
import { PageManager } from "../globalPagesSetup.js";

// WRITE YOUR STEP DEFINITIONS HERE...

When('user clicks in the book link', async function () {
  await PageManager.dashboardPage.bookLink.click();
});

When('user clicks on the Book Categories dropdown box', async function () {
    await PageManager.booksPage.BookCategoriesDropdown.click();
});

Then('user should see {int} book categories', async function (int) {
    const totalOptions = await PageManager.booksPage.BookCategoriesDropdown.locator("option").count();
    expect(totalOptions).toBe(int);
});