using System;
using System.Data;
using System.Configuration;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

using Word;

/// <summary>
///OfficeWord 的摘要说明
/// </summary>
public class OfficeWord
{
    object strFileName;
    Object Nothing;
    Word.Application myWordApp = new Word.ApplicationClass();
    Document myWordDoc;
    String strContent = "";

    public OfficeWord(string filename, string strcontent)
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
        strFileName = filename;
        this.strContent = strcontent;
        
	}

    public void CreateWord()
    {
        
        if (System.IO.File.Exists((string)strFileName))
        {
            System.IO.File.Delete((string)strFileName);

        }
        Nothing = System.Reflection.Missing.Value;
        myWordDoc = myWordApp.Documents.Add(ref Nothing, ref Nothing, 
            ref Nothing, ref Nothing);
       
        myWordDoc.Paragraphs.Last.Range.Text = strContent;
        
        myWordDoc.SaveAs(ref strFileName, ref Nothing, ref Nothing, ref Nothing,
            ref Nothing, ref Nothing, ref Nothing, ref Nothing, ref Nothing, ref Nothing
            , ref Nothing, ref Nothing, ref Nothing, ref Nothing, ref Nothing, ref Nothing);
        myWordDoc.Close(ref Nothing,ref Nothing,ref Nothing);
        myWordApp.Quit(ref Nothing,ref Nothing,ref Nothing);


    }
    public void OpenWord(string filepath)
    {
        object fpath = filepath;
        object oMissing = System.Reflection.Missing.Value;
        myWordDoc = myWordApp.Documents.Open(ref fpath, ref Nothing, ref Nothing, ref Nothing, ref Nothing,
            ref Nothing, ref Nothing, ref Nothing, ref Nothing, ref Nothing, ref Nothing, ref Nothing,
            ref Nothing, ref Nothing, ref Nothing, ref Nothing);

    }
}
