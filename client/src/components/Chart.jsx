import React, { useState, useEffect } from "react";
import {
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
  LabelList,
} from "recharts";

import "./stylingComponents/Chart.css";

const ChartComponent = ({ skater1Name, skater2Name }) => {
  const [chartAllTimeData, setChartAllTimeData] = useState([]);
  const [chartSeasonData, setChartSeasonData] = useState([]);

  useEffect(() => {
    const fetchAllTimeData = async () => {
      try {
        const distances = ["500", "1000", "1500"];
        const results = [];
        for (const distance of distances) {
          console.log(distance);
          const skater1Response = await fetch(
            `http://localhost:5000/results_${distance}/skaters/${skater1Name}`
          );
          const skater1Data = await skater1Response.json();
          //console.log(skater1Response);
          console.log(skater1Data);
          const skater2Response = await fetch(
            `http://localhost:5000/results_${distance}/skaters/${skater2Name}`
          );
          const skater2Data = await skater2Response.json();
          console.log(skater2Data);

          const allTime1Value =
            isNaN(skater1Data.all_time_best) ||
            skater1Data.all_time_best === null
              ? 0
              : skater1Data.all_time_best;
          const allTime2Value =
            isNaN(skater2Data.all_time_best) ||
            skater2Data.all_time_best === null
              ? 0
              : skater2Data.all_time_best;

          results.push({
            distance: `${distance}m`,
            all_time_1: allTime1Value,
            all_time_2: allTime2Value,
          });
        }
        setChartAllTimeData(results);
        console.log(results);
      } catch (err) {
        console.error(err.message);
      }
    };

    fetchAllTimeData();
  }, [skater1Name, skater2Name]);

  useEffect(() => {
    const fetchSeasonData = async () => {
      try {
        const distances = ["500", "1000", "1500"];
        const results = [];
        for (const distance of distances) {
          console.log(distance);
          const skater1Response = await fetch(
            `http://localhost:5000/results_${distance}/skaters/${skater1Name}`
          );
          const skater1Data = await skater1Response.json();
          //console.log(skater1Response);

          const skater2Response = await fetch(
            `http://localhost:5000/results_${distance}/skaters/${skater2Name}`
          );
          const skater2Data = await skater2Response.json();

          const season1Value = isNaN(skater1Data.season_best)
            ? null
            : skater1Data.season_best;
          const season2Value = isNaN(skater2Data.season_best)
            ? null
            : skater2Data.season_best;

          results.push({
            distance: `${distance}m`,
            season_1: season1Value,
            season_2: season2Value,
          });
        }
        setChartSeasonData(results);
      } catch (err) {
        console.error(err.message);
      }
    };

    fetchSeasonData();
  }, [skater1Name, skater2Name]);

  function formatSeconds(seconds) {
    const min = Math.floor(seconds / 60);
    const sec = Math.floor(seconds % 60);
    const ms = Math.round((seconds % 1) * 1000).toFixed(0);
    return `${min}:${sec < 10 ? "0" : ""}${sec}.${ms.padStart(3, "0")}`;
  }

  function nonzeroValue(value) {
    return value !== null && !isNaN(value) && value !== 0
      ? value
      : Number.POSITIVE_INFINITY;
  }

  return (
    <div className="bar-chart-container">
      {[
        { distance: "500", domain: [38, 60] },
        { distance: "1000", domain: [80, 100] },
        { distance: "1500", domain: [129, 150] },
      ].map(({ distance, domain }) => {
        const allTimeData = chartAllTimeData.find(
          (d) => d.distance === `${distance}m`
        );
        const seasonData = chartSeasonData.find(
          (d) => d.distance === `${distance}m`
        );

        // Check if both allTimeData and seasonData are present
        const isAllTimeDataAvailable =
          allTimeData &&
          allTimeData.hasOwnProperty("all_time_1") &&
          allTimeData.hasOwnProperty("all_time_2");

        const isSeasonDataAvailable =
          seasonData &&
          seasonData.hasOwnProperty("season_1") &&
          seasonData.hasOwnProperty("season_2");

        // Find the maximum y-value among the available data
        let maxDataValue = Math.max(
          allTimeData?.all_time_1 || 0,
          allTimeData?.all_time_2 || 0,
          seasonData?.season_1 || 0,
          seasonData?.season_2 || 0
        );
        //console.log(allTimeData.all_time_1)
        console.log(maxDataValue);

        let minDataValue = Math.min(
          nonzeroValue(allTimeData?.all_time_1),
          nonzeroValue(allTimeData?.all_time_2),
          nonzeroValue(seasonData?.season_1),
          nonzeroValue(seasonData?.season_2)
        );

        // Check if both allTimeData and seasonData are missing
        const isDataMissing = !allTimeData && !seasonData;

        // Determine the domain based on data availability
        const adjustedDomain = isDataMissing
          ? domain
          : [
              Math.max(0, Math.round(minDataValue - 3)),
              Math.round(maxDataValue + 3),
            ];

        return (
          <div key={distance} className="bar-chart">
            <h1>All Time Bests - {distance}m</h1>
            <br />
            <BarChart width={350} height={300} data={[allTimeData]} barGap={10}>
              <XAxis dataKey="distance" tick={false} />
              <YAxis
                domain={adjustedDomain}
                label={{
                  value: "Seconds",
                  angle: -90,
                  position: "insideLeft",
                  textAnchor: "middle",
                }}
              />
              <Tooltip formatter={(seconds) => formatSeconds(seconds)} />
              <Legend align="center" />
              <Bar
                dataKey="all_time_1"
                fill="#80bdff"
                name={skater1Name}
                isAnimationActive={false} //must disable to show labellist on top of bar
              >
                <LabelList
                  dataKey="all_time_1"
                  position="top"
                  formatter={formatSeconds}
                />
              </Bar>
              <Bar
                dataKey="all_time_2"
                fill="#9b1b30"
                name={skater2Name}
                isAnimationActive={false}
              >
                <LabelList
                  dataKey="all_time_2"
                  position="top"
                  formatter={formatSeconds}
                />
              </Bar>
            </BarChart>

            <h1>Season Bests - {distance}m</h1>
            <br />
            <BarChart width={350} height={300} data={[seasonData]} barGap={10}>
              {/* <CartesianGrid strokeDasharray="3 3" /> */}
              <XAxis dataKey="distance" tick={false} />
              <YAxis
                domain={adjustedDomain}
                label={{
                  value: "Seconds",
                  angle: -90,
                  position: "insideLeft",
                  textAnchor: "middle",
                }}
              />
              <Tooltip formatter={(seconds) => formatSeconds(seconds)} />
              <Legend align="center" />
              <Bar
                dataKey="season_1"
                fill="#80bdff"
                name={skater1Name}
                isAnimationActive={false}
              >
                <LabelList
                  dataKey="season_1"
                  position="top"
                  formatter={formatSeconds}
                />
              </Bar>
              <Bar
                dataKey="season_2"
                fill="#9b1b30"
                name={skater2Name}
                isAnimationActive={false}
              >
                <LabelList
                  dataKey="season_2"
                  position="top"
                  formatter={formatSeconds}
                />
              </Bar>
            </BarChart>
          </div>
        );
      })}
    </div>
  );
};

export default ChartComponent;
