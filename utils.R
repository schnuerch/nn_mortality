plot_all_forecasts <- function(prediction, country, years) {
  ggplot2::ggplot(prediction %>% 
                    dplyr::filter(Country == country, Year %in% years),
                  ggplot2::aes(x = Age, y = log(mx_prediction), color = as.factor(Year), group = as.factor(Year))) +
    ggplot2::geom_line(size = LINE_SIZE) + 
    ggplot2::facet_wrap(~Sex) + 
    ggplot2::labs(x = "Age", y = "log(mx)", color = "Year") +
    ggplot2::ggtitle(paste("Forecasts", years[1], "-", years[length(years)]))
}

plot_comparison_for_year <- function(prediction, country, year) {
  prediction <- prediction %>%
    tidyr::pivot_longer(c(mx_prediction, mx), names_to = "type", values_to = "mx")
  ggplot2::ggplot(prediction %>% 
                    dplyr::filter(Country == country, Year == year),
                  ggplot2::aes(x = Age, y = log(mx), color = type)) +
    ggplot2::geom_line(size = LINE_SIZE) +
    ggplot2::facet_wrap(~Sex) +
    ggplot2::labs(x = "Age", y = "log(mx)", color = "truth or prediction") +
    ggplot2::ggtitle(paste("Comparison model (blue) to truth (red) in", year))
}

plot_LC_parameters <- function(model) {
  ax <- data.frame(Age = names(model$ax), ax = model$ax)
  bx <- data.frame(Age = names(model$bx), bx = model$bx)
  kt <- data.frame(Year = names(model$kt), kt = model$kt)
  
  plot_ax <- ggplot2::ggplot(ax, ggplot2::aes(x = as.numeric(as.character(Age)), y = ax)) + 
    ggplot2::geom_line(size = LINE_SIZE) + ggplot2::xlab("Age")
  plot_bx <- ggplot2::ggplot(bx, ggplot2::aes(x = as.numeric(as.character(Age)), y = bx)) + 
    ggplot2::geom_line(size = LINE_SIZE) + ggplot2::xlab("Age")
  plot_kt <- ggplot2::ggplot(kt, ggplot2::aes(x = as.numeric(as.character(Year)), y = kt)) + 
    ggplot2::geom_line(size = LINE_SIZE) + ggplot2::xlab("Year")
  
  gridExtra::grid.arrange(grobs = list(plot_ax, plot_bx, plot_kt), nrow = 2)
}

calculate_error_measures <- function(prediction, groups) { # group = NULL for no grouping
  prediction %>%
    dplyr::filter(!is.na(mx)) %>% # calculation of error measures only possible if we know the truth
    dplyr::group_by(dplyr::across(dplyr::all_of(groups))) %>%
    dplyr::summarize(MSE = mean((mx_prediction - mx)^2) %>% round(6),
                     MAPE = mean(abs(mx_prediction - mx) / abs(mx)) %>% round(4),
                     .groups = "drop_last")
}