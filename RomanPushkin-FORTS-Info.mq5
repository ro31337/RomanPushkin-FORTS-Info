//+------------------------------------------------------------------+
//|                                                   FORTS-Info.mq5 |
//|                                    Copyright 2013, Roman Pushkin |
//|                                              http://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2013, Roman Pushkin"
#property link      "http://www.mql5.com"
#property version   "1.00"
#property indicator_chart_window

#include <Trade\SymbolInfo.mqh>
#include <ChartObjects\ChartObjectsTxtControls.mqh>


class CFortsInfo
  {
protected:
   CSymbolInfo       m_symbol;
   //--- chart objects
   CChartObjectLabel m_label[19];
   CChartObjectLabel m_label_info[19];

public:
                     CFortsInfo(void);
                    ~CFortsInfo(void);
   //---
   bool              Init(void);
   void              Deinit(void);
   void              Update(void);

private:
   void              AccountInfoToChart(void);
  };
  
 //---
CFortsInfo ExtScript;
//+------------------------------------------------------------------+
//| Constructor                                                      |
//+------------------------------------------------------------------+
CFortsInfo::CFortsInfo(void)
  {
  }
//+------------------------------------------------------------------+
//| Destructor                                                       |
//+------------------------------------------------------------------+
CFortsInfo::~CFortsInfo(void)
  {
  }

//+------------------------------------------------------------------+
//| Method Init.                                                     |
//+------------------------------------------------------------------+
bool CFortsInfo::Init(void)
  {
   int font_size1 = 8;
   int font_size2 = 10;

   color color_label;
   color color_info;
//--- tuning colors
   //color_info =(color)(ChartGetInteger(0,CHART_COLOR_BACKGROUND)^0xFFFFFF);
   //color_label=(color)(color_info^0x202020);
   
   color_info =(color)(0xFFFFFF);
   color_label=(color)(0xFFFFFF);
 
      m_label[0].Create(0,"Label1",0,10,10);
      m_label[0].Description("Тикер");
      m_label[0].Color(color_label);
      m_label[0].FontSize(font_size1);
      //---
      m_label_info[0].Create(0,"LabelInfo1",0,10,30);
      m_label_info[0].Description("");
      m_label_info[0].Color(color_info);
      m_label_info[0].FontSize(font_size2);
      
      m_label[1].Create(0,"Label2",0,75,10);
      m_label[1].Description("Кот.клиринга");
      m_label[1].Color(color_label);
      m_label[1].FontSize(font_size1);
      //---
      m_label_info[1].Create(0,"LabelInfo2",0,75,30);
      m_label_info[1].Description("");
      m_label_info[1].Color(color_info);
      m_label_info[1].FontSize(font_size2);
      
      m_label[2].Create(0,"Label3",0,150,10);
      m_label[2].Description("Цена послед.");
      m_label[2].Color(color_label);
      m_label[2].FontSize(font_size1);
      //---
      m_label_info[2].Create(0,"LabelInfo3",0,150,30);
      m_label_info[2].Description("");
      m_label_info[2].Color(color_info);
      m_label_info[2].FontSize(font_size2);
      
      m_label[3].Create(0,"Label4",0,220,12);
      m_label[3].Description("% измен.закр.");
      m_label[3].Color(color_label);
      m_label[3].FontSize(font_size1 -1);
      //---
      m_label_info[3].Create(0,"LabelInfo4",0,220,30);
      m_label_info[3].Description("");
      m_label_info[3].Color(color_info);
      m_label_info[3].FontSize(font_size2);
      
      m_label[4].Create(0,"Label5",0,290,10);
      m_label[4].Description("Макс.цена");
      m_label[4].Color(color_label);
      m_label[4].FontSize(font_size1);
      //---
      m_label_info[4].Create(0,"LabelInfo5",0,290,30);
      m_label_info[4].Description("");
      m_label_info[4].Color(color_info);
      m_label_info[4].FontSize(font_size2);
      
      m_label[5].Create(0,"Label6",0,355,10);
      m_label[5].Description("Мин.цена");
      m_label[5].Color(color_label);
      m_label[5].FontSize(font_size1);
      //---
      m_label_info[5].Create(0,"LabelInfo6",0,355,30);
      m_label_info[5].Description("");
      m_label_info[5].Color(color_info);
      m_label_info[5].FontSize(font_size2);
      
      m_label[6].Create(0,"Label7",0,415,10);
      m_label[6].Description("Г.О.");
      m_label[6].Color(color_label);
      m_label[6].FontSize(font_size1);
      //---
      m_label_info[6].Create(0,"LabelInfo7",0,415,30);
      m_label_info[6].Description("");
      m_label_info[6].Color(color_info);
      m_label_info[6].FontSize(font_size2);
      
      m_label[7].Create(0,"Label8",0,480,14);
      m_label[7].Description("Кол-во откр.поз.");
      m_label[7].Color(color_label);
      m_label[7].FontSize(font_size1 - 2);
      //---
      m_label_info[7].Create(0,"LabelInfo8",0,480,30);
      m_label_info[7].Description("");
      m_label_info[7].Color(color_info);
      m_label_info[7].FontSize(font_size2);
      
      m_label[8].Create(0,"Label9",0,550,10);
      m_label[8].Description("Оборот");
      m_label[8].Color(color_label);
      m_label[8].FontSize(font_size1);
      //---
      m_label_info[8].Create(0,"LabelInfo9",0,550,32);
      m_label_info[8].Description("");
      m_label_info[8].Color(color_info);
      m_label_info[8].FontSize(font_size2 -2);
      
      m_label[9].Create(0,"Label10",0,620,10);
      m_label[9].Description("Общ.спрос");
      m_label[9].Color(color_label);
      m_label[9].FontSize(font_size1);
      //---
      m_label_info[9].Create(0,"LabelInfo10",0,620,30);
      m_label_info[9].Description("");
      m_label_info[9].Color(color_info);
      m_label_info[9].FontSize(font_size2);
      
      m_label[10].Create(0,"Label11",0,685,10);
      m_label[10].Description("Общ.предл.");
      m_label[10].Color(color_label);
      m_label[10].FontSize(font_size1);
      //---
      m_label_info[10].Create(0,"LabelInfo11",0,685,30);
      m_label_info[10].Description("");
      m_label_info[10].Color(color_info);
      m_label_info[10].FontSize(font_size2);
      
      m_label[11].Create(0,"Label12",0,755,10);
      m_label[11].Description("Время изм.");
      m_label[11].Color(color_label);
      m_label[11].FontSize(font_size1);
      //---
      m_label_info[11].Create(0,"LabelInfo12",0,755,30);
      m_label_info[11].Description("");
      m_label_info[11].Color(color_info);
      m_label_info[11].FontSize(font_size2);
      
                                                                
  
   AccountInfoToChart();
//--- redraw chart
   ChartRedraw();
//---
   return(0);
  }
  
//+------------------------------------------------------------------+
//| Method Deinit.                                                   |
//+------------------------------------------------------------------+
void CFortsInfo::Deinit(void)
  {
  }
  
//+------------------------------------------------------------------+
//| Method Update.                                               |
//+------------------------------------------------------------------+
void CFortsInfo::Update(void)
  {
   AccountInfoToChart();
//--- redraw chart
   ChartRedraw();
  }
  
//+------------------------------------------------------------------+
//| Method InfoToChart.                                              |
//+------------------------------------------------------------------+
void CFortsInfo::AccountInfoToChart(void)
  {
  m_symbol.Name(_Symbol);
  m_symbol.RefreshRates();
    m_label_info[0].Description((string)m_symbol.Name());
    m_label_info[1].Description(DoubleToString(m_symbol.SessionPriceSettlement(),0));
    m_label_info[2].Description(DoubleToString(m_symbol.Last(),0));
    
    if(m_symbol.SessionClose() > 0)
    {
       double price_change = ((m_symbol.Last() / m_symbol.SessionClose()) - 1) * 100;
       m_label_info[3].Description(DoubleToString(price_change,2) + "%" );
    }
    
    m_label_info[4].Description(DoubleToString(m_symbol.SessionPriceLimitMax(),0));    
    m_label_info[5].Description(DoubleToString(m_symbol.SessionPriceLimitMin(),0));    
    m_label_info[6].Description(DoubleToString(m_symbol.MarginInitial(),2));    
    m_label_info[7].Description(DoubleToString(m_symbol.SessionInterest(),0));    
    m_label_info[8].Description(DoubleToString(m_symbol.SessionTurnover(),0));    
    m_label_info[9].Description(DoubleToString(m_symbol.SessionBuyOrdersVolume(),0));    
    m_label_info[10].Description(DoubleToString(m_symbol.SessionSellOrdersVolume(),0));    
    m_label_info[11].Description(TimeToString(m_symbol.Time(), TIME_SECONDS));
           
  }


int OnInit()
  {
//--- indicator buffers mapping
   ExtScript.Init();
      EventSetTimer(1);  
//---
   return(INIT_SUCCEEDED);
  }

void OnTimer()
  {
  ExtScript.Update();
  }

void OnDeinit(const int reason)
{
ExtScript.Deinit();
EventKillTimer();
}

//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
   ExtScript.Update();
   return 0;
  }
