﻿#pragma checksum "..\..\FirstLevel.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "882D43C1067916B7E809C47BCB807F64"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using Cards_of_defectation;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Cards_of_defectation {
    
    
    /// <summary>
    /// FirstLevel
    /// </summary>
    public partial class FirstLevel : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 12 "..\..\FirstLevel.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid main_grid;
        
        #line default
        #line hidden
        
        
        #line 19 "..\..\FirstLevel.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Menu menu;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\FirstLevel.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid Cap;
        
        #line default
        #line hidden
        
        
        #line 137 "..\..\FirstLevel.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid table_izgot;
        
        #line default
        #line hidden
        
        
        #line 220 "..\..\FirstLevel.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid table_remont;
        
        #line default
        #line hidden
        
        
        #line 297 "..\..\FirstLevel.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid table_priobr;
        
        #line default
        #line hidden
        
        
        #line 397 "..\..\FirstLevel.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid table_stor_rem;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Cards_of_defectation;component/firstlevel.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\FirstLevel.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.main_grid = ((System.Windows.Controls.Grid)(target));
            return;
            case 2:
            this.menu = ((System.Windows.Controls.Menu)(target));
            return;
            case 3:
            this.Cap = ((System.Windows.Controls.Grid)(target));
            return;
            case 4:
            
            #line 54 "..\..\FirstLevel.xaml"
            ((System.Windows.Controls.ComboBox)(target)).AddHandler(System.Windows.Controls.Primitives.TextBoxBase.TextChangedEvent, new System.Windows.Controls.TextChangedEventHandler(this.ComboBox_TextChanged));
            
            #line default
            #line hidden
            return;
            case 5:
            
            #line 69 "..\..\FirstLevel.xaml"
            ((System.Windows.Controls.ComboBox)(target)).AddHandler(System.Windows.Controls.Primitives.TextBoxBase.TextChangedEvent, new System.Windows.Controls.TextChangedEventHandler(this.ComboBox_TextChanged));
            
            #line default
            #line hidden
            return;
            case 6:
            this.table_izgot = ((System.Windows.Controls.DataGrid)(target));
            
            #line 140 "..\..\FirstLevel.xaml"
            this.table_izgot.PreviewKeyDown += new System.Windows.Input.KeyEventHandler(this.Key_PreviewKeyDown);
            
            #line default
            #line hidden
            return;
            case 9:
            this.table_remont = ((System.Windows.Controls.DataGrid)(target));
            
            #line 221 "..\..\FirstLevel.xaml"
            this.table_remont.PreviewKeyDown += new System.Windows.Input.KeyEventHandler(this.Key_PreviewKeyDown);
            
            #line default
            #line hidden
            return;
            case 12:
            this.table_priobr = ((System.Windows.Controls.DataGrid)(target));
            
            #line 298 "..\..\FirstLevel.xaml"
            this.table_priobr.PreviewKeyDown += new System.Windows.Input.KeyEventHandler(this.Key_PreviewKeyDown);
            
            #line default
            #line hidden
            return;
            case 16:
            this.table_stor_rem = ((System.Windows.Controls.DataGrid)(target));
            
            #line 398 "..\..\FirstLevel.xaml"
            this.table_stor_rem.PreviewKeyDown += new System.Windows.Input.KeyEventHandler(this.Key_PreviewKeyDown);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        void System.Windows.Markup.IStyleConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 7:
            
            #line 161 "..\..\FirstLevel.xaml"
            ((System.Windows.Controls.ComboBox)(target)).AddHandler(System.Windows.Controls.Primitives.TextBoxBase.TextChangedEvent, new System.Windows.Controls.TextChangedEventHandler(this.ComboBox_TextChanged));
            
            #line default
            #line hidden
            break;
            case 8:
            
            #line 183 "..\..\FirstLevel.xaml"
            ((System.Windows.Controls.ComboBox)(target)).AddHandler(System.Windows.Controls.Primitives.TextBoxBase.TextChangedEvent, new System.Windows.Controls.TextChangedEventHandler(this.ComboBox_TextChanged));
            
            #line default
            #line hidden
            break;
            case 10:
            
            #line 239 "..\..\FirstLevel.xaml"
            ((System.Windows.Controls.ComboBox)(target)).AddHandler(System.Windows.Controls.Primitives.TextBoxBase.TextChangedEvent, new System.Windows.Controls.TextChangedEventHandler(this.ComboBox_TextChanged));
            
            #line default
            #line hidden
            break;
            case 11:
            
            #line 261 "..\..\FirstLevel.xaml"
            ((System.Windows.Controls.ComboBox)(target)).AddHandler(System.Windows.Controls.Primitives.TextBoxBase.TextChangedEvent, new System.Windows.Controls.TextChangedEventHandler(this.ComboBox_TextChanged));
            
            #line default
            #line hidden
            break;
            case 13:
            
            #line 316 "..\..\FirstLevel.xaml"
            ((System.Windows.Controls.ComboBox)(target)).AddHandler(System.Windows.Controls.Primitives.TextBoxBase.TextChangedEvent, new System.Windows.Controls.TextChangedEventHandler(this.ComboBox_TextChanged));
            
            #line default
            #line hidden
            break;
            case 14:
            
            #line 338 "..\..\FirstLevel.xaml"
            ((System.Windows.Controls.ComboBox)(target)).AddHandler(System.Windows.Controls.Primitives.TextBoxBase.TextChangedEvent, new System.Windows.Controls.TextChangedEventHandler(this.ComboBox_TextChanged));
            
            #line default
            #line hidden
            break;
            case 15:
            
            #line 360 "..\..\FirstLevel.xaml"
            ((System.Windows.Controls.ComboBox)(target)).AddHandler(System.Windows.Controls.Primitives.TextBoxBase.TextChangedEvent, new System.Windows.Controls.TextChangedEventHandler(this.ComboBox_TextChanged));
            
            #line default
            #line hidden
            break;
            case 17:
            
            #line 416 "..\..\FirstLevel.xaml"
            ((System.Windows.Controls.ComboBox)(target)).AddHandler(System.Windows.Controls.Primitives.TextBoxBase.TextChangedEvent, new System.Windows.Controls.TextChangedEventHandler(this.ComboBox_TextChanged));
            
            #line default
            #line hidden
            break;
            case 18:
            
            #line 438 "..\..\FirstLevel.xaml"
            ((System.Windows.Controls.ComboBox)(target)).AddHandler(System.Windows.Controls.Primitives.TextBoxBase.TextChangedEvent, new System.Windows.Controls.TextChangedEventHandler(this.ComboBox_TextChanged));
            
            #line default
            #line hidden
            break;
            case 19:
            
            #line 462 "..\..\FirstLevel.xaml"
            ((System.Windows.Controls.ComboBox)(target)).AddHandler(System.Windows.Controls.Primitives.TextBoxBase.TextChangedEvent, new System.Windows.Controls.TextChangedEventHandler(this.ComboBox_TextChanged));
            
            #line default
            #line hidden
            break;
            }
        }
    }
}

