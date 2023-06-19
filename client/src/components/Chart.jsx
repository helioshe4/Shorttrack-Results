import React from "react";
import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, Legend } from "recharts";

const ChartComponent = ({ skater1Name, skater2Name }) => {
  

  // Logic to filter and transform data based on skater1, skater2, and distances
  // Replace this with your actual logic to filter and transform data

  // Filter data based on selected distances for skater1
  //const filteredData1 = skater1.results.filter((result) => distances.includes(result.distance));

  // Filter data based on selected distances for skater2
  //const filteredData2 = skater2.results.filter((result) => distances.includes(result.distance));

  // Generate data for each distance
  // const chartData = distances.map((distance) => {
  //   const data1 = filteredData1
  //     .filter((result) => result.distance === distance)
  //     .map((result) => ({
  //       name: result.date, // or any other property you want to use as the name
  //       time: result.time, // or any other property you want to use as the value
  //     }));

  //   const data2 = filteredData2
  //     .filter((result) => result.distance === distance)
  //     .map((result) => ({
  //       name: result.date, // or any other property you want to use as the name
  //       time: result.time, // or any other property you want to use as the value
  //     }));

  //   return { distance, data1, data2 };
  // });

  return (
    <div>
      {/* {chartData.map((chart) => (
        <div key={chart.distance}>
          <h3>Distance: {chart.distance}m</h3>
          <BarChart width={500} height={300} data={chart.data1}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="name" />
            <YAxis />
            <Tooltip />
            <Legend />
            <Bar dataKey="time" fill="#8884d8" name="Skater 1" />
          </BarChart>

          <BarChart width={500} height={300} data={chart.data2}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="name" />
            <YAxis />
            <Tooltip />
            <Legend />
            <Bar dataKey="time" fill="#82ca9d" name="Skater 2" />
          </BarChart>
        </div>
      ))} */}
      <p1>{}</p1>
    </div>
  );
};

export default ChartComponent;