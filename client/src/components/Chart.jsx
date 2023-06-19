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
  const [chartData, setChartData] = useState([]);

  useEffect(() => {
    const fetchData = async () => {
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
            alL_time_1: skater1Data.all_time_best,
            alL_time_2: skater2Data.all_time_best,
          });
        }
        setChartData(results);
        console.log(results);
      } catch (err) {
        console.error(err.message);
      }
    };

    fetchData();
  }, [skater1Name, skater2Name]);

  const data = [
    {
      distance: "Page A",
      uv: 4000,
      pv: 2400,
    },
    {
      distance: "Page B",
      uv: 3000,
      pv: 1398,
    },
    {
      distance: "Page C",
      uv: 2000,
      pv: 9800,
    },
    {
      distance: "Page D",
      uv: 2780,
      pv: 3908,
    },
    {
      distance: "Page E",
      uv: 1890,
      pv: 4800,
    },
    {
      distance: "Page F",
      uv: 2390,
      pv: 3800,
    },
    {
      distance: "Page G",
      uv: 3490,
      pv: 4300,
    },
  ];

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
      <div className="bar-chart">
        <BarChart width={730} height={250} data={data}>
          <CartesianGrid strokeDasharray="3 3" />
          <XAxis dataKey="distance" />
          <YAxis />
          <Tooltip />
          <Legend />
          <Bar dataKey="pv" fill="#8884d8" />
          <Bar dataKey="uv" fill="#82ca9d" />
        </BarChart>
      </div>
    </div>
  );
};

export default ChartComponent;
