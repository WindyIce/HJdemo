﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public struct ColorTempMemory
{
    public string color;
    public int startIndex;
    // 结束的是一个闭区间，包含这个索引
    public int endIndex;

    public ColorTempMemory(string _color, int _startIndex, int _endIndex)
    {
        color = _color;
        startIndex = _startIndex;
        endIndex = _endIndex;
    }
}

public static class SubtitleParser
{
    public const string YELLOW = "yellow";
    public const string BLUE = "blue";
    public const string RED = "red";
    public const string GREEN = "green";
    public const string WHITE = "white";
    public const string BLACK = "black";
    // 编译一行字幕！！！格式："^w你好，^r艾伦^w，我是^y三笠"
    public static string ParseALine(string subtitle, out List<ColorTempMemory> colorIndexList)
    {
        string toReturn = string.Empty;
        string[] eachs = subtitle.Split('^');
        colorIndexList = new List<ColorTempMemory>();
        int index = 0;
        foreach (var each in eachs)
        {
            if (each.Length <= 0) continue;
            toReturn += each.Substring(1, each.Length - 1);
            switch (each[0])
            {
                // 黄色
                case 'y':
                    colorIndexList.Add(new ColorTempMemory(YELLOW, index, toReturn.Length - 1));
                    break;
                // 蓝色
                case 'b':
                    colorIndexList.Add(new ColorTempMemory(BLUE, index, toReturn.Length - 1));
                    break;
                // 红色
                case 'r':
                    colorIndexList.Add(new ColorTempMemory(RED, index, toReturn.Length - 1));
                    break;
                // 绿色
                case 'g':
                    colorIndexList.Add(new ColorTempMemory(GREEN, index, toReturn.Length - 1));
                    break;
                // 白色
                case 'w':
                    colorIndexList.Add(new ColorTempMemory(WHITE, index, toReturn.Length - 1));
                    break;
                // 黑色
                case 'k':
                    colorIndexList.Add(new ColorTempMemory(BLACK, index, toReturn.Length - 1));
                    break;
                default:
                    //Debug.Log("编译错误了啊");
                    break;

            }
            index += each.Length - 1;
        }
        return toReturn;
    }
}

