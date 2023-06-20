import React, { useState, useEffect } from "react";
import {
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
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
          results.push({
            distance: `${distance}m`,
            all_time_1: skater1Data.all_time_best,
            all_time_2: skater2Data.all_time_best,
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
          console.log(skater1Data);
          const skater2Response = await fetch(
            `http://localhost:5000/results_${distance}/skaters/${skater2Name}`
          );
          const skater2Data = await skater2Response.json();
          console.log(skater2Data);
          results.push({
            distance: `${distance}m`,
            season_1: skater1Data.season_best,
            season_2: skater2Data.season_best,
          });
        }
        setChartSeasonData(results);
        console.log(results);
      } catch (err) {
        console.error(err.message);
      }
    };

    fetchSeasonData();
  }, [skater1Name, skater2Name]);

  return (
    <div className="bar-chart-container">
      {/* {chartData.map((data) => (
        <div key={data.distance}>
          <h3>Distance: {data.distance}m</h3>
          <BarChart width={400} height={300} data={[data]}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="distance" />
            <YAxis dataKey="time" />
            <Tooltip />
            <Legend />
            <Bar
              dataKey="skater1Data.all_time_best"
              fill="#8884d8"
              name={`${skater1Name} - All Time Best`}
            />
            <Bar
              dataKey="skater2Data.all_time_best"
              fill="#82ca9d"
              name={`${skater2Name} - All Time Best`}
            />
          </BarChart>
        </div>
      ))} */}
      {/*
      <div className="bar-chart">
        <h1>All Time Personal Bests</h1>
        <br />
        <BarChart width={730} height={250} data={chartAllTimeData}>
          <CartesianGrid strokeDasharray="3 3" />
          <XAxis dataKey="distance" />
          <YAxis yAxisId="left" domain={[40, 50]} />{" "}
          <YAxis yAxisId="right" orientation="right" domain={[130, 150]} />{" "}
          <Tooltip />
          <Legend />
          <Bar
            yAxisId="left"
            dataKey="all_time_1"
            fill="#80bdff"
            name={skater1Name}
          />
          <Bar
            yAxisId="right"
            dataKey="all_time_2"
            fill="#9b1b30"
            name={skater2Name}
          />
        </BarChart>
      </div>

      <div className="bar-chart">
        <h1>Season Bests</h1>
        <br />
        <BarChart width={730} height={250} data={chartSeasonData}>
          <CartesianGrid strokeDasharray="3 3" />
          <XAxis dataKey="distance" />
          <YAxis />
          <Tooltip />
          <Legend />
          <Bar dataKey="season_1" fill="#80bdff" name={skater1Name} />
          <Bar dataKey="season_2" fill="#9b1b30" name={skater2Name} />
        </BarChart>
      </div>
    */}

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

          return (
            <div key={distance} className="bar-chart">
              <h1>All Time Bests - {distance}m</h1>
              <br />
              <BarChart
                width={350}
                height={300}
                data={[allTimeData]}
                barGap={10}
              >
                <CartesianGrid strokeDasharray="3 3" />
                <XAxis dataKey="distance" />
                <YAxis domain={domain} />
                <Tooltip />
                <Legend />
                <Bar dataKey="all_time_1" fill="#80bdff" name={skater1Name} />
                <Bar dataKey="all_time_2" fill="#9b1b30" name={skater2Name} />
              </BarChart>

              <h1>Season Bests - {distance}m</h1>
              <br />
              <BarChart
                width={350}
                height={300}
                data={[seasonData]}
                barGap={10}
              >
                <CartesianGrid strokeDasharray="3 3" />
                <XAxis dataKey="distance" />
                <YAxis domain={domain} />
                <Tooltip />
                <Legend />
                <Bar dataKey="season_1" fill="#80bdff" name={skater1Name} />
                <Bar dataKey="season_2" fill="#9b1b30" name={skater2Name} />
              </BarChart>
            </div>
          );
        })}
      </div>
    </div>
  );
};

export default ChartComponent;
