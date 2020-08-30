<!-- 
Header has to be removed
>" -> &gt;"
"< -> "&lt;
&nbsp; -> removed 
-->

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel DefaultButton="btnSend" runat="server" ID="afFormPanel">
        <asp:HiddenField ID="token" runat="server" />
        <asp:HiddenField ID="hfSrcCode" runat="server" />

        <h1>
            <asp:Literal ID="lblFormCaption" runat="server" Text="&lt;%$ Resources:lblFormCaption%&gt;"></asp:Literal>
        </h1>
        <table class="nospangr" runat="server" id="tableFormInfo" visible="false">
            <tr>
                <td>
                    <asp:Literal ID="lblFormInfo" runat="server" />
                </td>
            </tr>
        </table>

        <asp:Label ID="lblError" runat="server" CssClass="alert" Visible="false"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" OnPreRender="ValidationSummary1_PreRender"/>
        <h2><span>
            <asp:Literal ID="lblGroupCustomer" runat="server" Text="&lt;%$ Resources:lblGroupCustomer%&gt;"></asp:Literal></span>
        </h2>
        <table class="gridFrame nospangr">
            <tr class="gridSpacer">
                <td colspan="3"></td>
            </tr>
            <tr>
                <td class="vat">
                    <table class="nospangr">
                        <tr>
                            <td>
                                <asp:Label ID="lblSurname" runat="server" Text="&lt;%$ Resources:lblSurname%&gt;"></asp:Label><span
                                    class="star">*</span><input id="hfPId" type="hidden" runat="server" />
                            </td>
                            <td class="nopad">
                                <asp:TextBox ID="edPartnerSurname" CssClass="field sm" MaxLength="50" runat="server"></asp:TextBox><asp:RequiredFieldValidator CssClass="error" 
                                    ID="RequiredFieldValidator4" runat="server" ErrorMessage="&lt;%$ Resources:msgSurnameNotSet%&gt;"
                                    ControlToValidate="edPartnerSurname" Display="Dynamic" SetFocusOnError="True">!</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblFirstName" runat="server" Text="&lt;%$ Resources:lblFirstName%&gt;"></asp:Label>
                            </td>
                            <td class="nopad">
                                <asp:TextBox ID="edPartnerFirstName" CssClass="field sm" MaxLength="50" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblTitle" runat="server" Text="&lt;%$ Resources:lblTitle%&gt;"></asp:Label>
                            </td>
                            <td class="nopad">
                                <asp:TextBox ID="edPartnerTitle" CssClass="field ssssm" MaxLength="10" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="vat">
                    <table class="nospangr">
                        <tr>
                            <td>
                                <asp:Label ID="lblCity" runat="server" Text="&lt;%$ Resources:lblCity %&gt;"></asp:Label><span
                                    class="star">*</span>
                            </td>
                            <td class="nopad">
                                <asp:TextBox ID="edPartnerCity" CssClass="field" MaxLength="50" runat="server"></asp:TextBox><asp:RequiredFieldValidator CssClass="error" 
                                    ID="RequiredFieldValidator1" runat="server" ErrorMessage="&lt;%$ Resources:msgCityNotSet %&gt;"
                                    ControlToValidate="edPartnerCity" Display="Dynamic" SetFocusOnError="True">!</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblCityPart" runat="server" Text="&lt;%$ Resources:lblCityPart %&gt;"></asp:Label>
                            </td>
                            <td class="nopad">
                                <asp:TextBox ID="edPartnerCityPart" CssClass="field" MaxLength="50" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblStreet" runat="server" Text="&lt;%$ Resources:lblStreet %&gt;"></asp:Label>
                            </td>
                            <td class="nopad">
                                <asp:TextBox ID="edPartnerStreet" CssClass="field" MaxLength="50" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblHouseNum" runat="server" Text="&lt;%$ Resources:lblHouseNum %&gt;" ToolTip="&lt;%$ Resources:captionHouseNum %&gt;"></asp:Label><span
                                    class="star">*</span>
                            </td>
                            <td class="nopad">
                                <asp:TextBox ID="edPartnerHouseNumber" CssClass="field ssssm" MaxLength="10" runat="server"></asp:TextBox><asp:RequiredFieldValidator CssClass="error" 
                                    ID="RequiredFieldValidator2" runat="server" ErrorMessage="&lt;%$ Resources:msgHouseNumNotSet %&gt;"
                                    ControlToValidate="edPartnerHouseNumber" Display="Dynamic" SetFocusOnError="True">!</asp:RequiredFieldValidator>
                                
                            <asp:Label ID="lblPSC" runat="server" Text="&lt;%$ Resources:lblPSC %&gt;"
                                ToolTip="&lt;%$ Resources:lblPostNumberText %&gt;"></asp:Label><span
                                    class="star">*</span>
                            <asp:TextBox ID="edPartnerPSC" CssClass="field ssssm" MaxLength="5" runat="server"></asp:TextBox><asp:RequiredFieldValidator CssClass="error" 
                                ID="RequiredFieldValidator3" runat="server" ErrorMessage="&lt;%$ Resources:msgPSCNotSet %&gt;"
                                ControlToValidate="edPartnerPSC" Display="Dynamic" SetFocusOnError="True">!</asp:RequiredFieldValidator><asp:CustomValidator CssClass="error" 
                                    ControlToValidate="edPartnerPSC" ID="cvedPartnerPSC" ValidateEmptyText="false"
                                    runat="server" ErrorMessage="" Enabled="true" OnServerValidate="cvedPSC_ServerValidate">!</asp:CustomValidator>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="vat cleanLeftPadding">
                    <table class="nospangr">
                        <tr>
                            <td>
                                <asp:Label ID="lblEmail" runat="server" Text="&lt;%$ Resources:lblEmail %&gt;"></asp:Label><span
                                    class="bluestar">*</span>
                            </td>
                            <td class="nopad">
                                <asp:TextBox ID="edPartnerEmail" CssClass="field" MaxLength="50" runat="server"></asp:TextBox><asp:CustomValidator CssClass="error" 
                                    ID="cvContact" runat="server" ControlToValidate="edPartnerEmail" Display="Dynamic"
                                    ErrorMessage="&lt;%$ Resources:msgContactNotSet %&gt;" SetFocusOnError="True" ValidateEmptyText="True"
                                    Enabled="true" Visible="true" OnServerValidate="CustomValidator1_ServerValidate">!</asp:CustomValidator><asp:CustomValidator CssClass="error" 
                                        ID="cvedPartnerEmail" runat="server" ControlToValidate="edPartnerEmail" Display="Dynamic"
                                        ErrorMessage="" SetFocusOnError="True" ValidateEmptyText="False" Enabled="true"
                                        Visible="true" OnServerValidate="cvedPartnerEmail_ServerValidate">!</asp:CustomValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblPhone" runat="server" Text="&lt;%$ Resources:lblPhone %&gt;"></asp:Label><span
                                    class="bluestar">*</span>
                            </td>
                            <td class="nopad">
                                <asp:TextBox ID="edPartnerPhone" CssClass="field" MaxLength="50" runat="server"></asp:TextBox><asp:CustomValidator CssClass="error" 
                                    ID="cvedPartnerPhone" runat="server" ControlToValidate="edPartnerPhone" Display="Dynamic"
                                    ErrorMessage="" SetFocusOnError="True" ValidateEmptyText="False" Enabled="true"
                                    Visible="true" OnServerValidate="cvedPartnerPhone_ServerValidate">!</asp:CustomValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblFAX" runat="server" Text="&lt;%$ Resources:lblFAX %&gt;"></asp:Label><span
                                    class="bluestar">*</span>
                            </td>
                            <td class="nopad">
                                <asp:TextBox ID="edPartnerFax" CssClass="field" MaxLength="15" runat="server"></asp:TextBox><asp:CustomValidator CssClass="error" 
                                    ID="cvedPartnerFax" runat="server" ControlToValidate="edPartnerFax" Display="Dynamic"
                                    ErrorMessage="" SetFocusOnError="True" ValidateEmptyText="False" Enabled="true"
                                    Visible="true" OnServerValidate="cvedPartnerFax_ServerValidate">!</asp:CustomValidator>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="gridSpacer">
                <td colspan="3"></td>
            </tr>
        </table>
        <h2><span>
            <asp:Literal ID="lblGroupConsumptionPlace" runat="server" Text="&lt;%$ Resources:lblGroupConsumptionPlace%&gt;"></asp:Literal></span>
        </h2>
        <table class="gridFrame nospangr">
            <tr class="gridSpacer">
                <td colspan="2"></td>
            </tr>
            <tr>
                <td class="vat">
                    <table class="nospangr">
                        <tr>
                            <td>
                                <asp:Label ID="lblCityCP" runat="server" Text="&lt;%$ Resources:lblCity %&gt;"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="edCPCity" CssClass="field" MaxLength="50" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblCityPartCP" runat="server" Text="&lt;%$ Resources:lblCityPart %&gt;"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="edCPCityPart" CssClass="field" MaxLength="50" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblStreetCP" runat="server" Text="&lt;%$ Resources:lblStreet %&gt;"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="edCPStreet" CssClass="field" MaxLength="50" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblHouseNumCP" runat="server" Text="&lt;%$ Resources:lblHouseNum %&gt;"
                                    ToolTip="&lt;%$ Resources:captionHouseNum %&gt;"></asp:Label>
                            </td>
                            <td class="nopad offset">
                                <asp:TextBox ID="edCPHouseNum" CssClass="field ssssm" MaxLength="10" runat="server"></asp:TextBox>
                                
                            <asp:Label ID="lblPSCCP" runat="server" Text="&lt;%$ Resources:lblPSC %&gt;" ToolTip="&lt;%$ Resources:lblPostNumberText %&gt;"></asp:Label>
                            <asp:TextBox ID="edCPPSC" CssClass="field ssssm" MaxLength="5" runat="server"></asp:TextBox><asp:CustomValidator CssClass="error" 
                                ControlToValidate="edCPPSC" ID="cvedCPPSC" ValidateEmptyText="false" runat="server"
                                ErrorMessage="" Enabled="true" OnServerValidate="cvedPSC_ServerValidate">!</asp:CustomValidator>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="vat">
                    <table class="nospangr">
                        <tr>
                            <td>
                                <asp:Label ID="lblCpEvnum" runat="server" Text="&lt;%$ Resources:lblCpEvnum %&gt;"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="edCPNumber" CssClass="field" ReadOnly="true" runat="server" ToolTip="&lt;%$ Resources:txtCpEvnum %&gt;"></asp:TextBox>
                                <input id="hfCPNumber" type="hidden" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="gridSpacer">
                <td colspan="2"></td>
            </tr>
        </table>
		<asp:PlaceHolder ID="GDPRPlugin" runat="server"></asp:PlaceHolder>
        <h2><span>
            <asp:Literal ID="lblMessageText" runat="server" Text="&lt;%$ Resources:lblMessageText%&gt;"></asp:Literal><span
                class="star">*</span></span></h2>
        <table class="nospangr gridFrame">
            <tr class="gridSpacer">
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="edMemo" CssClass="textarea full" runat="server" TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator CssClass="error" 
                        ID="RequiredFieldValidatorA" runat="server" ErrorMessage="&lt;%$ Resources:msgMessageNotSet%&gt;"
                        ControlToValidate="edMemo" Display="Dynamic" SetFocusOnError="True">!</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr class="gridSpacer">
                <td></td>
            </tr>
        </table>
        <table class="nospangr full">
            <tr>
                <td style="text-align: center;">
                    <asp:Button ID="btnSend" runat="server" CssClass="submit blue" Text="&lt;%$ Resources:btnSend%&gt;"
                        OnClick="btnSend_Click" UseSubmitBehavior="False" />
                </td>
            </tr>
        </table>
        <table class="nospangr onPageHelp">
            <tr>
                <td>
                    <span class="star">*</span>
                </td>
                <td>
                    <asp:Literal ID="txtRequiredValue" runat="server" Text="&lt;%$ Resources:txtRequiredValue%&gt;" />
                </td>
            </tr>
            <tr>
                <td>
                    <span class="bluestar">*</span>
                </td>
                <td>
                    <asp:Literal ID="txtRequiredContact" runat="server" Text="&lt;%$ Resources:txtRequiredContact%&gt;" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
