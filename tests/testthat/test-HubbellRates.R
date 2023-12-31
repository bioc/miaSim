test_that("simulateHubbellRates", {
    HubbellWTime <- simulateHubbellRates(
        x0 = c(0, 5, 10),
        migration_p = 0.01, metacommunity_probability = NULL, k_events = 1,
        growth_rates = NULL, norm = FALSE, t_end = 1000
    )

    expect_s4_class(HubbellWTime, "TreeSummarizedExperiment")
    #expect_equal(dim(HubbellWTime@assays@data@listData[["counts"]]), c(3, 1000))
    expect_equal(dim(HubbellWTime), c(3, 1000))    

    # check errors in inputs
    expect_error(Error1 <- simulateHubbellRates(x0 = -1))
    expect_error(Error2 <- simulateHubbellRates(
        x0 = c(0, 5, 10),
        migration_p = "0.01", metacommunity_probability = NULL, k_events = "1",
        growth_rates = NULL, norm = FALSE, t_end = 1000
    ))
    expect_error(Error3 <- simulateHubbellRates(
        x0 = c(0, 5, 10),
        migration_p = 0.01, metacommunity_probability = NULL, k_events = 1,
        growth_rates = NULL, norm = "FALSE", t_end = 1000
    ))

    # check norm = TRUE
    HubbellWTime <- simulateHubbellRates(
        x0 = c(0, 5, 10),
        migration_p = 0.01, metacommunity_probability = NULL, k_events = 1,
        growth_rates = NULL, norm = TRUE, t_end = 1000
    )
})
