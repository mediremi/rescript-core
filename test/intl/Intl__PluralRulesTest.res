open RescriptCore

Console.log("---")
Console.log("Intl.PluralRules")

let _formatter = Intl.PluralRules.make()
let _formatter = Intl.PluralRules.makeWithLocale("en-US")
let _formatter = Intl.PluralRules.makeWithLocales(["en-US", "en-GB"])
let _formatter = Intl.PluralRules.makeWithOptions({
  \"type": #ordinal,
  maximumSignificantDigits: #5,
  minimumSignificantDigits: #3,
})
let _formatter = Intl.PluralRules.makeWithLocaleAndOptions(
  "en-US",
  {
    \"type": #ordinal,
    maximumSignificantDigits: #5,
    minimumSignificantDigits: #3,
  },
)
let formatter = Intl.PluralRules.makeWithLocalesAndOptions(
  ["en-US"],
  {
    \"type": #ordinal,
    maximumSignificantDigits: #5,
    minimumSignificantDigits: #3,
  },
)

formatter->Intl.PluralRules.resolvedOptions->Console.log

formatter->Intl.PluralRules.select(2.0)->Console.log
formatter->Intl.PluralRules.selectInt(2)->Console.log

// doesn't appear to work in node v16
// formatter->Intl.PluralRules.selectBigInt(BigInt.fromInt(2))->Console.log
// formatter
// ->Intl.PluralRules.selectRangeBigInt(~start=BigInt.fromInt(1), ~end=BigInt.fromInt(3))
// ->Console.log
// formatter->Intl.PluralRules.selectRange(~start=1., ~end=3.)->Console.log
// formatter->Intl.PluralRules.selectRangeInt(~start=1, ~end=3)->Console.log
