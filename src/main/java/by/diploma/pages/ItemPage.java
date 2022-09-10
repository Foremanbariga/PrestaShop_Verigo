package by.diploma.pages;

import com.codeborne.selenide.SelenideElement;

import static com.codeborne.selenide.Selectors.byXpath;
import static com.codeborne.selenide.Selenide.$;


public class ItemPage extends HomePage {
    public SelenideElement itemName = $(byXpath("//img[@class='replace-2x img-responsive' and @title='Red Dress']"));
    public SelenideElement addToCartButton = $(byXpath("//button[@type='submit' and span='Add to cart']"));

}