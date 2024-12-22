.class Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;
.super Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;
.source "ImsRcsSipDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipDelegateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;


# direct methods
.method public constructor <init>(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "e"    # Ljava/util/concurrent/Executor;

    .line 678
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 679
    invoke-direct {p0, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 680
    return-void
.end method

.method private convertAidlConnectionStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .line 1205
    packed-switch p1, :pswitch_data_0

    .line 1213
    const/4 v0, 0x0

    return v0

    .line 1210
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1207
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertHidlConnectionStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .line 1191
    packed-switch p1, :pswitch_data_0

    .line 1199
    const/4 v0, 0x0

    return v0

    .line 1196
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1193
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertHidlDestroyedReason(I)I
    .locals 2
    .param p1, "reason"    # I

    .line 1219
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1220
    return v0

    .line 1221
    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 1222
    return v1

    .line 1224
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    .line 1225
    return v1

    .line 1227
    :cond_2
    const/4 v1, 0x3

    if-ne v1, p1, :cond_3

    .line 1228
    return v1

    .line 1230
    :cond_3
    const/4 v1, 0x4

    if-ne v1, p1, :cond_4

    .line 1231
    return v1

    .line 1234
    :cond_4
    return v0
.end method

.method private handleNotRegisterEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "reasonCode"    # Ljava/lang/String;

    .line 1120
    const-string v0, ": handleNotRegEvent:SERVICE_NOTREGISTERED evt: "

    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 1123
    .local v0, "delegateRegState":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1124
    .local v3, "deregisteredFt":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 1128
    .end local v3    # "deregisteredFt":Ljava/lang/String;
    goto :goto_0

    .line 1130
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v2

    .line 1131
    .local v2, "regState":Landroid/telephony/ims/DelegateRegistrationState;
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v3, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v3, v2}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 1132
    const/4 v3, 0x0

    .line 1134
    .local v3, "reasonInfo":I
    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v4, v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    if-eqz v4, :cond_4

    .line 1135
    const/4 v4, 0x0

    if-eqz p1, :cond_3

    .line 1136
    const-string v1, "RCS_CONNECTION_CAUSE_CODE_NONE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1137
    const/4 v1, 0x0

    move v3, v1

    .end local v3    # "reasonInfo":I
    .local v1, "reasonInfo":I
    goto :goto_1

    .line 1138
    .end local v1    # "reasonInfo":I
    .restart local v3    # "reasonInfo":I
    :cond_1
    const-string v1, "RCS_CONNECTION_CAUSE_CODE_GENERIC_ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1139
    const/16 v1, 0x84

    move v3, v1

    .line 1140
    :cond_2
    :goto_1
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1141
    .local v1, "info":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v4, v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRegisteredFts:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 1142
    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v4, v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    invoke-virtual {v4, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1143
    .end local v1    # "info":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_2

    .line 1145
    :cond_3
    iget-object v5, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v5, v5, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    invoke-virtual {v5}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->getRegisteredFeatureTags()Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1147
    iget-object v5, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v5, v5, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    invoke-virtual {v5}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->clearRegisteredFeatureTags()V

    .line 1148
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v4, v5

    .line 1149
    .local v4, "info":Landroid/telephony/ims/ImsReasonInfo;
    const-string v5, ": Invoking onDeregistered with reason: CODE_UNSPECIFIED "

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    invoke-virtual {v1, v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1151
    .end local v4    # "info":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_2

    .line 1154
    :cond_4
    const-string v4, " getImsRcsRegistrationImpl returned NULL obj"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_5
    :goto_2
    return-void
.end method

.method private handleNotRegisterEventWithSipInfo(Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V
    .locals 5
    .param p1, "reasonCode"    # Ljava/lang/String;
    .param p2, "sipInfo"    # Landroid/telephony/ims/SipDetails;

    .line 1162
    const-string v0, ": handleNotRegEvent:SERVICE_NOTREGISTERED evt: "

    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 1165
    .local v0, "delegateRegState":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1167
    .local v3, "deregisteredFt":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 1171
    .end local v3    # "deregisteredFt":Ljava/lang/String;
    goto :goto_0

    .line 1172
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v2

    .line 1173
    .local v2, "regState":Landroid/telephony/ims/DelegateRegistrationState;
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v3, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v3, v2}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 1174
    const/4 v3, 0x0

    .line 1175
    .local v3, "reasonInfo":I
    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v4, v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    if-eqz v4, :cond_3

    .line 1176
    if-eqz p1, :cond_4

    .line 1177
    const-string v1, "RCS_CONNECTION_CAUSE_CODE_NONE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1178
    const/4 v1, 0x0

    move v3, v1

    .end local v3    # "reasonInfo":I
    .local v1, "reasonInfo":I
    goto :goto_1

    .line 1179
    .end local v1    # "reasonInfo":I
    .restart local v3    # "reasonInfo":I
    :cond_1
    const-string v1, "RCS_CONNECTION_CAUSE_CODE_GENERIC_ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1180
    const/16 v1, 0x84

    move v3, v1

    .line 1181
    :cond_2
    :goto_1
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1182
    .local v1, "info":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v4, v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRegisteredFts:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 1183
    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v4, v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    invoke-virtual {v4, v1, p2}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V

    .line 1184
    .end local v1    # "info":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_2

    .line 1186
    :cond_3
    const-string v4, " getImsRcsRegistrationImpl returned NULL obj"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_4
    :goto_2
    return-void
.end method

.method private handleRegisterEvent()Landroid/util/ArraySet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1102
    const-string v0, ": handleRegEvent:SERVICE_REGISTERED evt: "

    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 1105
    .local v0, "delegateRegState":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1106
    .local v2, "features":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v3, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1107
    .local v4, "ft":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "supported fts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual {v0, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 1109
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1110
    .end local v4    # "ft":Ljava/lang/String;
    goto :goto_0

    .line 1112
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v1

    .line 1113
    .local v1, "regState":Landroid/telephony/ims/DelegateRegistrationState;
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v3, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v3, v1}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 1115
    return-object v2
.end method

.method private parseSipReasonHeader(Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .param p1, "reasonHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1045
    const/4 v0, 0x0

    .line 1046
    .local v0, "result":I
    const-string v1, ""

    .line 1047
    .local v1, "resultText":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1048
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1049
    .local v2, "reasons":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1050
    .local v5, "data":Ljava/lang/String;
    const-string v6, "cause="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "="

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    .line 1051
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1052
    .local v6, "cause":[Ljava/lang/String;
    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1054
    .end local v6    # "cause":[Ljava/lang/String;
    :cond_0
    const-string v6, "text="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1055
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1056
    .local v6, "text":[Ljava/lang/String;
    aget-object v1, v6, v8

    .line 1049
    .end local v5    # "data":Ljava/lang/String;
    .end local v6    # "text":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1060
    .end local v2    # "reasons":[Ljava/lang/String;
    :cond_2
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private populateSipDetails(Lvendor/qti/ims/rcssipaidlservice/EventData;)Landroid/telephony/ims/SipDetails;
    .locals 4
    .param p1, "evtData"    # Lvendor/qti/ims/rcssipaidlservice/EventData;

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "populateSipDetails: SipCode info present is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->sipCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v0, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->reasonHeader:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 1069
    iget-object v0, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->reasonHeader:Ljava/lang/String;

    invoke-direct {p0, v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->parseSipReasonHeader(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 1070
    .local v0, "reasonHeaderDetails":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v1, Landroid/telephony/ims/SipDetails$Builder;

    invoke-direct {v1, v2}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    iget v2, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->sipCode:I

    iget-object v3, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->reasonPhrase:Ljava/lang/String;

    .line 1071
    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1072
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    .line 1073
    invoke-virtual {v1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v0

    .line 1074
    .local v0, "sipInfo":Landroid/telephony/ims/SipDetails;
    goto :goto_0

    .line 1075
    .end local v0    # "sipInfo":Landroid/telephony/ims/SipDetails;
    :cond_0
    iget-object v0, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->reasonPhrase:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->reasonPhrase:Ljava/lang/String;

    .line 1076
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "populateSipDetails: reasonPhrase is present: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->reasonPhrase:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v0, Landroid/telephony/ims/SipDetails$Builder;

    invoke-direct {v0, v2}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    iget v1, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->sipCode:I

    iget-object v2, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->reasonPhrase:Ljava/lang/String;

    .line 1080
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v0

    .line 1081
    invoke-virtual {v0}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v0

    .restart local v0    # "sipInfo":Landroid/telephony/ims/SipDetails;
    goto :goto_0

    .line 1085
    .end local v0    # "sipInfo":Landroid/telephony/ims/SipDetails;
    :cond_1
    const-string v0, "populateSipDetails: reasonPhrase is not present: Filling empty string instead "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    new-instance v0, Landroid/telephony/ims/SipDetails$Builder;

    invoke-direct {v0, v2}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    iget v1, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->sipCode:I

    .line 1087
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v0

    .line 1088
    invoke-virtual {v0}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v0

    .line 1098
    .restart local v0    # "sipInfo":Landroid/telephony/ims/SipDetails;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public onConnectionCmdStatus(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .line 1020
    const-string v0, "onConnectionCmdStatus called"

    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1022
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipMessageMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1023
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateMsgCb:Landroid/telephony/ims/DelegateMessageCallback;

    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipMessageMap:Ljava/util/HashMap;

    .line 1024
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/SipMessage;

    invoke-virtual {v1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v1

    .line 1023
    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    .line 1027
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipMessageMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1029
    :cond_0
    if-nez p1, :cond_2

    .line 1030
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipMessageMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateMsgCb:Landroid/telephony/ims/DelegateMessageCallback;

    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipMessageMap:Ljava/util/HashMap;

    .line 1032
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/SipMessage;

    invoke-virtual {v1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v1

    .line 1031
    invoke-interface {v0, v1}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSent(Ljava/lang/String;)V

    .line 1033
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipMessageMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1035
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->getUserData()I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 1036
    const-string v0, "ImsRcsRegistrationImpl call onRegistering"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    .line 1038
    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    .line 1039
    .local v0, "attr":Landroid/telephony/ims/ImsRegistrationAttributes;
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    invoke-virtual {v1, v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 1042
    .end local v0    # "attr":Landroid/telephony/ims/ImsRegistrationAttributes;
    :cond_2
    :goto_0
    return-void
.end method

.method public onDelegateCreated(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 686
    .local p2, "deniedFts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 689
    .local v0, "featureTagStateArraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/telephony/ims/FeatureTagState;>;"
    const/4 v1, 0x0

    .line 691
    .local v1, "ftDataState":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 692
    .local v3, "deniedFt":Ljava/lang/String;
    new-instance v4, Landroid/telephony/ims/FeatureTagState;

    invoke-direct {v4, v3, v1}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    .line 694
    .local v4, "ftState":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 695
    .end local v3    # "deniedFt":Ljava/lang/String;
    .end local v4    # "ftState":Landroid/telephony/ims/FeatureTagState;
    goto :goto_0

    .line 696
    :cond_0
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-virtual {v2, p2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setDeniedFtsList(Ljava/util/ArrayList;)V

    .line 697
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-static {v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->access$000(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;)V

    .line 698
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-static {v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->access$100(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 699
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-interface {v2, v3, v0}, Landroid/telephony/ims/DelegateStateCallback;->onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V

    goto :goto_1

    .line 705
    :cond_1
    const-string v2, "onDelegateCreated: Restored Delegate; not sending onCreated to FW"

    const-string v3, "ImsRcsSipDelegateImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->access$102(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;Z)Z

    .line 707
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getIsDelegatePendingDestroy()Z

    move-result v2

    if-nez v2, :cond_4

    .line 712
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    if-eqz v2, :cond_3

    .line 713
    const-string v2, "onDelegateCreated: calling TriggerRegistration"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->triggerRegistration()I

    move-result v2

    .line 715
    .local v2, "userData":I
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v3, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    if-eqz v3, :cond_2

    .line 716
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v3, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    invoke-virtual {v3, v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->setUserData(I)V

    .line 717
    .end local v2    # "userData":I
    :cond_2
    goto :goto_1

    .line 718
    :cond_3
    const-string v2, "onDelegateCreated: mSipTransportWrapper is null"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 721
    :cond_4
    const-string v2, "onDelegateCreated: handling pending destroyDelegate"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-virtual {v2, v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setIsDelegateActive(Z)V

    .line 723
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isConnectionHandleValid()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 724
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    if-eqz v2, :cond_5

    .line 725
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget v3, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mDelegateDestroyReason:I

    iget-object v5, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v5, v5, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    invoke-virtual {v2, v3, v5}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->closeConnection(ILvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;)I

    .line 731
    :cond_5
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    const/4 v3, -0x1

    invoke-virtual {v2, v4, v3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setIsDelegatePendingDestroy(ZI)V

    .line 734
    :goto_1
    return-void
.end method

.method public onDelegateDestroyed(II)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "reason"    # I

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": onDelegateDestroyed with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 739
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportServiceInstance:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportServiceInstance:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipDelegateList:Ljava/util/ArrayList;

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 743
    :cond_0
    invoke-direct {p0, p2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->convertHidlDestroyedReason(I)I

    move-result v0

    .line 744
    .local v0, "AOSP_reason":I
    new-instance v2, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 746
    .local v2, "delegateRegState":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v3, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 747
    .local v4, "deregisteredFt":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 750
    .end local v4    # "deregisteredFt":Ljava/lang/String;
    goto :goto_0

    .line 751
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v3

    .line 752
    .local v3, "regState":Landroid/telephony/ims/DelegateRegistrationState;
    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v4, v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v4, v3}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 753
    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v4, v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportServiceInstance:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget v4, v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSlotId:I

    invoke-static {v4}, Lvendor/qti/imsrcs/ImsRcsService;->getImsRcsRegistrationImpl(I)Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    move-result-object v4

    .line 755
    .local v4, "regImpl":Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;
    if-eqz v4, :cond_2

    .line 756
    invoke-virtual {v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->getRegisteredFeatureTags()Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 758
    invoke-virtual {v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->clearRegisteredFeatureTags()V

    .line 759
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 761
    .local v5, "info":Landroid/telephony/ims/ImsReasonInfo;
    const-string v6, ": Invoking onDeregistered with reason: CODE_UNSPECIFIED "

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {v4, v5}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 763
    .end local v5    # "info":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_1

    .line 765
    :cond_2
    const-string v5, ":getImsRcsRegistrationImpl returned NULL obj"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_3
    :goto_1
    iget-object v5, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v5, v5, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRegisteredFts:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 768
    const-string v5, ": onDelegateDestroyed clearing RegFts"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRegisteredFts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 771
    :cond_4
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v1, v0}, Landroid/telephony/ims/DelegateStateCallback;->onDestroyed(I)V

    .line 772
    return-void
.end method

.method public onEventReceived(I)V
    .locals 4
    .param p1, "connectionStatus"    # I

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": onEventReceived: called: connectionStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 777
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    if-nez p1, :cond_0

    .line 780
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->handleNotRegisterEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 783
    invoke-direct {p0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->handleRegisterEvent()Landroid/util/ArraySet;

    move-result-object v0

    .line 784
    .local v0, "featuresList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    if-eqz v2, :cond_1

    .line 785
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    invoke-virtual {v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->getRatType()I

    move-result v1

    .line 786
    .local v1, "aospRegistrationTech":I
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-virtual {v3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getSipAssociatedUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->checkToInvokeOnRegistered(Landroid/util/ArraySet;ILjava/lang/String;)V

    .line 787
    .end local v1    # "aospRegistrationTech":I
    goto :goto_0

    .line 788
    :cond_1
    const-string v2, "getImsRcsRegistrationImpl returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    .end local v0    # "featuresList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-void
.end method

.method public onEventReceived(Lvendor/qti/ims/rcssipaidlservice/EventData;)V
    .locals 7
    .param p1, "evtData"    # Lvendor/qti/ims/rcssipaidlservice/EventData;

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": AIDL: onEventReceived: called: connectionStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->event:I

    .line 848
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 847
    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v3, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->removeRegisteringFeatureTags(Landroid/util/ArraySet;)V

    .line 853
    :cond_0
    iget v0, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->event:I

    if-nez v0, :cond_1

    .line 854
    const-string v0, ": AIDL: onEventReceived:SERVICE_NOTREGISTERED "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->populateSipDetails(Lvendor/qti/ims/rcssipaidlservice/EventData;)Landroid/telephony/ims/SipDetails;

    move-result-object v0

    .line 856
    .local v0, "sipInfo":Landroid/telephony/ims/SipDetails;
    iget-object v1, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->causeCode:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->handleNotRegisterEventWithSipInfo(Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V

    goto/16 :goto_1

    .line 858
    .end local v0    # "sipInfo":Landroid/telephony/ims/SipDetails;
    :cond_1
    const/4 v0, 0x1

    iget v2, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->event:I

    if-ne v0, v2, :cond_4

    .line 860
    invoke-direct {p0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->handleRegisterEvent()Landroid/util/ArraySet;

    move-result-object v0

    .line 861
    .local v0, "featuresList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 862
    .local v2, "registeredFtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 863
    .local v4, "ft":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEventReceived: registered fts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v5, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v5, v5, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRegisteredFts:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 865
    .end local v4    # "ft":Ljava/lang/String;
    goto :goto_0

    .line 866
    :cond_2
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget v4, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->ratType:I

    invoke-static {v3, v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->access$200(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;I)I

    move-result v3

    .line 867
    .local v3, "aospRegistrationTech":I
    const-string v4, "ImsRcsRegistrationImpl call onRegistered"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    if-eqz v1, :cond_3

    .line 870
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->populateSipDetails(Lvendor/qti/ims/rcssipaidlservice/EventData;)Landroid/telephony/ims/SipDetails;

    move-result-object v1

    .line 871
    .local v1, "sipInfo":Landroid/telephony/ims/SipDetails;
    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v4, v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    iget-object v5, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v5, v5, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRegisteredFts:Landroid/util/ArraySet;

    iget-object v6, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 874
    invoke-virtual {v6}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getSipAssociatedUri()Ljava/lang/String;

    move-result-object v6

    .line 871
    invoke-virtual {v4, v5, v3, v6, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->checkToInvokeOnRegisteredWithSipInfo(Landroid/util/ArraySet;ILjava/lang/String;Landroid/telephony/ims/SipDetails;)V

    .line 877
    .end local v0    # "featuresList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "sipInfo":Landroid/telephony/ims/SipDetails;
    .end local v2    # "registeredFtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "aospRegistrationTech":I
    :cond_3
    goto :goto_1

    .line 878
    :cond_4
    const/4 v0, 0x7

    iget v1, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->event:I

    if-ne v0, v1, :cond_5

    .line 880
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-static {v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->access$300(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 881
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->setRegisteringFeatureTags(Landroid/util/ArraySet;)V

    .line 882
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->populateSipDetails(Lvendor/qti/ims/rcssipaidlservice/EventData;)Landroid/telephony/ims/SipDetails;

    move-result-object v0

    .line 883
    .local v0, "sipInfo":Landroid/telephony/ims/SipDetails;
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    invoke-virtual {v1, v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->postOnRegisteringWithSipInfo(Landroid/telephony/ims/SipDetails;)V

    .line 886
    .end local v0    # "sipInfo":Landroid/telephony/ims/SipDetails;
    :cond_5
    :goto_1
    return-void
.end method

.method public onEventReceived_1_1(Lvendor/qti/ims/rcssip/V1_1/eventData;)V
    .locals 7
    .param p1, "evtData"    # Lvendor/qti/ims/rcssip/V1_1/eventData;

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": onEventReceived_1_1: called: connectionStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lvendor/qti/ims/rcssip/V1_1/eventData;->event:I

    .line 796
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget v0, p1, Lvendor/qti/ims/rcssip/V1_1/eventData;->event:I

    if-nez v0, :cond_0

    .line 799
    iget-object v0, p1, Lvendor/qti/ims/rcssip/V1_1/eventData;->causeCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->handleNotRegisterEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 800
    :cond_0
    const/4 v0, 0x1

    iget v2, p1, Lvendor/qti/ims/rcssip/V1_1/eventData;->event:I

    if-ne v0, v2, :cond_2

    .line 801
    invoke-direct {p0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->handleRegisterEvent()Landroid/util/ArraySet;

    move-result-object v0

    .line 802
    .local v0, "featuresList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 803
    .local v2, "registeredFtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 804
    .local v4, "ft":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEventReceived_1_1: registered fts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v5, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v5, v5, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRegisteredFts:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 806
    .end local v4    # "ft":Ljava/lang/String;
    goto :goto_0

    .line 807
    :cond_1
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget v4, p1, Lvendor/qti/ims/rcssip/V1_1/eventData;->ratType:I

    invoke-static {v3, v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->access$200(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;I)I

    move-result v3

    .line 808
    .local v3, "aospRegistrationTech":I
    const-string v4, "ImsRcsRegistrationImpl call onRegistered"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    if-eqz v1, :cond_2

    .line 810
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v4, v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRegisteredFts:Landroid/util/ArraySet;

    iget-object v5, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-virtual {v5}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getSipAssociatedUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->checkToInvokeOnRegistered(Landroid/util/ArraySet;ILjava/lang/String;)V

    .line 812
    .end local v0    # "featuresList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "registeredFtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "aospRegistrationTech":I
    :cond_2
    :goto_1
    return-void
.end method

.method public onEventReceived_1_2(Lvendor/qti/ims/rcssip/V1_2/eventData;)V
    .locals 7
    .param p1, "evtData"    # Lvendor/qti/ims/rcssip/V1_2/eventData;

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": onEventReceived_1_2: called: connectionStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lvendor/qti/ims/rcssip/V1_2/eventData;->event:I

    .line 817
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 816
    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v3, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->removeRegisteringFeatureTags(Landroid/util/ArraySet;)V

    .line 822
    :cond_0
    iget v0, p1, Lvendor/qti/ims/rcssip/V1_2/eventData;->event:I

    if-nez v0, :cond_1

    .line 823
    iget-object v0, p1, Lvendor/qti/ims/rcssip/V1_2/eventData;->causeCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->handleNotRegisterEvent(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 824
    :cond_1
    const/4 v0, 0x1

    iget v2, p1, Lvendor/qti/ims/rcssip/V1_2/eventData;->event:I

    if-ne v0, v2, :cond_3

    .line 825
    invoke-direct {p0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->handleRegisterEvent()Landroid/util/ArraySet;

    move-result-object v0

    .line 826
    .local v0, "featuresList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 827
    .local v2, "registeredFtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 828
    .local v4, "ft":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEventReceived_1_2: registered fts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v5, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v5, v5, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRegisteredFts:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 830
    .end local v4    # "ft":Ljava/lang/String;
    goto :goto_0

    .line 831
    :cond_2
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget v4, p1, Lvendor/qti/ims/rcssip/V1_2/eventData;->ratType:I

    invoke-static {v3, v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->access$200(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;I)I

    move-result v3

    .line 832
    .local v3, "aospRegistrationTech":I
    const-string v4, "ImsRcsRegistrationImpl call onRegistered"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    if-eqz v1, :cond_4

    .line 834
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v4, v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRegisteredFts:Landroid/util/ArraySet;

    iget-object v5, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-virtual {v5}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getSipAssociatedUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->checkToInvokeOnRegistered(Landroid/util/ArraySet;ILjava/lang/String;)V

    goto :goto_1

    .line 836
    .end local v0    # "featuresList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "registeredFtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "aospRegistrationTech":I
    :cond_3
    const/4 v0, 0x7

    iget v1, p1, Lvendor/qti/ims/rcssip/V1_2/eventData;->event:I

    if-ne v0, v1, :cond_4

    .line 837
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-static {v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->access$300(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 838
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->setRegisteringFeatureTags(Landroid/util/ArraySet;)V

    .line 839
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->postOnRegistering()V

    goto :goto_2

    .line 836
    :cond_4
    :goto_1
    nop

    .line 842
    :cond_5
    :goto_2
    return-void
.end method

.method public onFeatureTagStatusChange(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/rcssip/V1_0/featureTagData;",
            ">;)V"
        }
    .end annotation

    .line 891
    .local p1, "featureTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcssip/V1_0/featureTagData;>;"
    if-nez p1, :cond_0

    return-void

    .line 893
    :cond_0
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 895
    .local v0, "delegateRegState":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 897
    .local v1, "features":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/ims/rcssip/V1_0/featureTagData;

    .line 898
    .local v3, "featureTagInfo":Lvendor/qti/ims/rcssip/V1_0/featureTagData;
    iget v4, v3, Lvendor/qti/ims/rcssip/V1_0/featureTagData;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 900
    iget-object v4, v3, Lvendor/qti/ims/rcssip/V1_0/featureTagData;->featureTag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 902
    iget-object v4, v3, Lvendor/qti/ims/rcssip/V1_0/featureTagData;->featureTag:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->convertFtStringtoList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 903
    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v4, v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportServiceInstance:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget v4, v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSlotId:I

    invoke-static {v4}, Lvendor/qti/imsrcs/ImsRcsService;->getImsRcsRegistrationImpl(I)Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    move-result-object v4

    .line 905
    .local v4, "regImpl":Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;
    const-string v5, "ImsRcsSipDelegateImpl"

    if-eqz v4, :cond_1

    .line 906
    const-string v6, "ImsRcsRegistrationImpl call onRegistered"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->getRatType()I

    move-result v5

    .line 908
    .local v5, "aospRegistrationTech":I
    iget-object v6, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-virtual {v6}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getSipAssociatedUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->checkToInvokeOnRegistered(Landroid/util/ArraySet;ILjava/lang/String;)V

    .line 909
    .end local v5    # "aospRegistrationTech":I
    goto :goto_1

    .line 910
    :cond_1
    const-string v6, "getImsRcsRegistrationImpl returned NULL object"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .end local v4    # "regImpl":Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;
    :goto_1
    goto :goto_2

    :cond_2
    iget v4, v3, Lvendor/qti/ims/rcssip/V1_0/featureTagData;->state:I

    if-nez v4, :cond_3

    .line 914
    iget-object v4, v3, Lvendor/qti/ims/rcssip/V1_0/featureTagData;->featureTag:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_2

    .line 918
    :cond_3
    iget v4, v3, Lvendor/qti/ims/rcssip/V1_0/featureTagData;->state:I

    const/16 v5, 0x64

    if-lt v4, v5, :cond_4

    .line 920
    iget-object v4, v3, Lvendor/qti/ims/rcssip/V1_0/featureTagData;->featureTag:Ljava/lang/String;

    iget v5, v3, Lvendor/qti/ims/rcssip/V1_0/featureTagData;->state:I

    .line 922
    invoke-direct {p0, v5}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->convertHidlConnectionStatus(I)I

    move-result v5

    .line 920
    invoke-virtual {v0, v4, v5}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 926
    .end local v3    # "featureTagInfo":Lvendor/qti/ims/rcssip/V1_0/featureTagData;
    :goto_2
    goto :goto_0

    .line 924
    .restart local v3    # "featureTagInfo":Lvendor/qti/ims/rcssip/V1_0/featureTagData;
    :cond_4
    return-void

    .line 927
    .end local v3    # "featureTagInfo":Lvendor/qti/ims/rcssip/V1_0/featureTagData;
    :cond_5
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    if-eqz v2, :cond_6

    .line 928
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    invoke-virtual {v2, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->removeRegisteringFeatureTags(Landroid/util/ArraySet;)V

    .line 930
    :cond_6
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    .line 931
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v3

    .line 930
    invoke-interface {v2, v3}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 932
    return-void
.end method

.method public onFeatureTagStatusChange([Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;)V
    .locals 9
    .param p1, "featureTagList"    # [Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;

    .line 936
    if-nez p1, :cond_0

    return-void

    .line 938
    :cond_0
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 940
    .local v0, "delegateRegState":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 942
    .local v1, "features":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, p1, v4

    .line 943
    .local v5, "featureTagInfo":Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;
    iget v6, v5, Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;->state:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 945
    iget-object v6, v5, Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;->featureTag:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 947
    iget-object v6, v5, Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;->featureTag:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->convertFtStringtoList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 948
    iget-object v6, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v6, v6, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportServiceInstance:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget v6, v6, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSlotId:I

    invoke-static {v6}, Lvendor/qti/imsrcs/ImsRcsService;->getImsRcsRegistrationImpl(I)Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    move-result-object v6

    .line 950
    .local v6, "regImpl":Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;
    const-string v7, "ImsRcsSipDelegateImpl"

    if-eqz v6, :cond_1

    .line 951
    const-string v8, "ImsRcsRegistrationImpl call onRegistered"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {v6}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->getRatType()I

    move-result v7

    .line 953
    .local v7, "aospRegistrationTech":I
    iget-object v8, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-virtual {v8}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getSipAssociatedUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v1, v7, v8}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->checkToInvokeOnRegistered(Landroid/util/ArraySet;ILjava/lang/String;)V

    .line 954
    .end local v7    # "aospRegistrationTech":I
    goto :goto_1

    .line 955
    :cond_1
    const-string v8, "getImsRcsRegistrationImpl returned NULL object"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    .end local v6    # "regImpl":Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;
    :goto_1
    goto :goto_2

    :cond_2
    iget v6, v5, Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;->state:I

    if-nez v6, :cond_3

    .line 959
    iget-object v6, v5, Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;->featureTag:Ljava/lang/String;

    invoke-virtual {v0, v6, v3}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_2

    .line 963
    :cond_3
    iget v6, v5, Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;->state:I

    const/16 v7, 0x64

    if-lt v6, v7, :cond_4

    .line 965
    iget-object v6, v5, Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;->featureTag:Ljava/lang/String;

    iget v7, v5, Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;->state:I

    .line 967
    invoke-direct {p0, v7}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->convertAidlConnectionStatus(I)I

    move-result v7

    .line 965
    invoke-virtual {v0, v6, v7}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 942
    .end local v5    # "featureTagInfo":Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 969
    .restart local v5    # "featureTagInfo":Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;
    :cond_4
    return-void

    .line 972
    .end local v5    # "featureTagInfo":Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;
    :cond_5
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    if-eqz v2, :cond_6

    .line 973
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    invoke-virtual {v2, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->removeRegisteringFeatureTags(Landroid/util/ArraySet;)V

    .line 975
    :cond_6
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    .line 976
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v3

    .line 975
    invoke-interface {v2, v3}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 977
    return-void
.end method

.method public onIncomingMessageReceived([B)V
    .locals 6
    .param p1, "sipMsg"    # [B

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":onIncomingMessageReceived: size:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 989
    .local v0, "strSipMsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":onIncomingMessageReceived: strSipMsg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    new-instance v2, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;

    invoke-direct {v2, v0}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;-><init>(Ljava/lang/String;)V

    .line 993
    .local v2, "msgParser":Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":onIncomingMessageReceived: startLine :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 994
    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getStartLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 993
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":onIncomingMessageReceived: HeaderSection :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 996
    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getHeaderSection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 995
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":onIncomingMessageReceived: MessageContent :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 998
    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getMessageContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 997
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getMessageContent()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1000
    const-string v3, ":onIncomingMessageReceived:msgcontent is null, but forwarding message"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    new-instance v1, Landroid/telephony/ims/SipMessage;

    .line 1003
    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getStartLine()Ljava/lang/String;

    move-result-object v3

    .line 1004
    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getHeaderSection()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-direct {v1, v3, v4, v5}, Landroid/telephony/ims/SipMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1006
    .local v1, "incomingMsg":Landroid/telephony/ims/SipMessage;
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v3, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateMsgCb:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-interface {v3, v1}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V

    .line 1007
    .end local v1    # "incomingMsg":Landroid/telephony/ims/SipMessage;
    goto :goto_0

    .line 1009
    :cond_0
    new-instance v1, Landroid/telephony/ims/SipMessage;

    .line 1010
    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getStartLine()Ljava/lang/String;

    move-result-object v3

    .line 1011
    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getHeaderSection()Ljava/lang/String;

    move-result-object v4

    .line 1012
    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getMessageContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Landroid/telephony/ims/SipMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1013
    .restart local v1    # "incomingMsg":Landroid/telephony/ims/SipMessage;
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v3, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateMsgCb:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-interface {v3, v1}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V

    .line 1015
    .end local v1    # "incomingMsg":Landroid/telephony/ims/SipMessage;
    :goto_0
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->access$400(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)V

    .line 1016
    return-void
.end method
