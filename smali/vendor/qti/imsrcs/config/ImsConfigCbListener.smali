.class public abstract Lvendor/qti/imsrcs/config/ImsConfigCbListener;
.super Ljava/lang/Object;
.source "ImsConfigCbListener.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "ImsConfigCbListener"

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->LOG_TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "ex"    # Ljava/util/concurrent/Executor;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "ImsConfigCbListener"

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->LOG_TAG:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 33
    return-void
.end method


# virtual methods
.method public final handleAutoConfigErrorCb(Lvendor/qti/ims/configaidlservice/AutoConfigResponse;)V
    .locals 2
    .param p1, "autoConfigResponse"    # Lvendor/qti/ims/configaidlservice/AutoConfigResponse;

    .line 206
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda5;-><init>(Lvendor/qti/imsrcs/config/ImsConfigCbListener;Lvendor/qti/ims/configaidlservice/AutoConfigResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method public final handleAutoConfigErrorCb(Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;)V
    .locals 2
    .param p1, "autoConfigResponse"    # Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;

    .line 125
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda2;-><init>(Lvendor/qti/imsrcs/config/ImsConfigCbListener;Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public final handleAutoConfigReceived(Lvendor/qti/ims/configaidlservice/AutoConfig;)V
    .locals 2
    .param p1, "autoConfig"    # Lvendor/qti/ims/configaidlservice/AutoConfig;

    .line 176
    const-string v0, "ImsConfigCbListener"

    const-string v1, "handleAutoConfigReceived inside"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda7;-><init>(Lvendor/qti/imsrcs/config/ImsConfigCbListener;Lvendor/qti/ims/configaidlservice/AutoConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method public final handleAutoConfigReceived(Lvendor/qti/ims/configservice/V1_0/AutoConfig;)V
    .locals 2
    .param p1, "autoConfig"    # Lvendor/qti/ims/configservice/V1_0/AutoConfig;

    .line 92
    const-string v0, "ImsConfigCbListener"

    const-string v1, "handleAutoConfigReceived inside"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda4;-><init>(Lvendor/qti/imsrcs/config/ImsConfigCbListener;Lvendor/qti/ims/configservice/V1_0/AutoConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public final handleConfigWrapperCleanup()V
    .locals 2

    .line 231
    const-string v0, "ImsConfigCbListener"

    const-string v1, "handleConfigWrapperCleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->onWrapperReset()V

    .line 234
    return-void
.end method

.method public final handleGetSettingsResp(ILvendor/qti/ims/configaidlservice/SettingsData;I)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "settingsData"    # Lvendor/qti/ims/configaidlservice/SettingsData;
    .param p3, "userData"    # I

    .line 164
    if-nez p2, :cond_0

    .line 165
    const-string v0, "ImsConfigCbListener"

    const-string v1, "handleGetSettingsResp settingsData null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1, p3}, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/config/ImsConfigCbListener;Lvendor/qti/ims/configaidlservice/SettingsData;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public final handleGetSettingsResp(ILvendor/qti/ims/configservice/V1_0/SettingsData;I)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "settingsData"    # Lvendor/qti/ims/configservice/V1_0/SettingsData;
    .param p3, "userData"    # I

    .line 80
    if-nez p2, :cond_0

    .line 81
    const-string v0, "ImsConfigCbListener"

    const-string v1, "handleGetSettingsResp settingsData null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p2, p1, p3}, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda9;-><init>(Lvendor/qti/imsrcs/config/ImsConfigCbListener;Lvendor/qti/ims/configservice/V1_0/SettingsData;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public final handleGetSettingsResp(ILvendor/qti/ims/configservice/V1_1/SettingsData;I)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "settingsData"    # Lvendor/qti/ims/configservice/V1_1/SettingsData;
    .param p3, "userData"    # I

    .line 68
    if-nez p2, :cond_0

    .line 69
    const-string v0, "ImsConfigCbListener"

    const-string v1, "handleGetSettingsResp settingsData null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1, p3}, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda1;-><init>(Lvendor/qti/imsrcs/config/ImsConfigCbListener;Lvendor/qti/ims/configservice/V1_1/SettingsData;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public final handleGetUpdatedSettingsCb(Lvendor/qti/ims/configaidlservice/SettingsData;)V
    .locals 2
    .param p1, "settingsData"    # Lvendor/qti/ims/configaidlservice/SettingsData;

    .line 217
    if-nez p1, :cond_0

    .line 218
    const-string v0, "ImsConfigCbListener"

    const-string v1, "handleGetUpdatedSettingsCb settingsData null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda8;-><init>(Lvendor/qti/imsrcs/config/ImsConfigCbListener;Lvendor/qti/ims/configaidlservice/SettingsData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method public final handleGetUpdatedSettingsCb(Lvendor/qti/ims/configservice/V1_0/SettingsData;)V
    .locals 2
    .param p1, "settingsData"    # Lvendor/qti/ims/configservice/V1_0/SettingsData;

    .line 150
    if-nez p1, :cond_0

    .line 151
    const-string v0, "ImsConfigCbListener"

    const-string v1, "handleGetUpdatedSettingsCb settingsData null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda3;-><init>(Lvendor/qti/imsrcs/config/ImsConfigCbListener;Lvendor/qti/ims/configservice/V1_0/SettingsData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public final handleGetUpdatedSettingsCb(Lvendor/qti/ims/configservice/V1_1/SettingsData;)V
    .locals 2
    .param p1, "settingsData"    # Lvendor/qti/ims/configservice/V1_1/SettingsData;

    .line 136
    if-nez p1, :cond_0

    .line 137
    const-string v0, "ImsConfigCbListener"

    const-string v1, "handleGetUpdatedSettingsCb settingsData null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda6;-><init>(Lvendor/qti/imsrcs/config/ImsConfigCbListener;Lvendor/qti/ims/configservice/V1_1/SettingsData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method synthetic lambda$handleAutoConfigErrorCb$3$vendor-qti-imsrcs-config-ImsConfigCbListener(Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;)V
    .locals 2
    .param p1, "autoConfigResponse"    # Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;

    .line 127
    iget-short v0, p1, Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;->statusCode:S

    .line 128
    .local v0, "errorCode":I
    iget-object v1, p1, Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;->reasonPhrase:Ljava/lang/String;

    .line 129
    .local v1, "errorStr":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->onAutoConfigurationErrorReceivedCb(ILjava/lang/String;)V

    .line 130
    return-void
.end method

.method synthetic lambda$handleAutoConfigErrorCb$8$vendor-qti-imsrcs-config-ImsConfigCbListener(Lvendor/qti/ims/configaidlservice/AutoConfigResponse;)V
    .locals 2
    .param p1, "autoConfigResponse"    # Lvendor/qti/ims/configaidlservice/AutoConfigResponse;

    .line 208
    iget-char v0, p1, Lvendor/qti/ims/configaidlservice/AutoConfigResponse;->statusCode:C

    .line 209
    .local v0, "errorCode":I
    iget-object v1, p1, Lvendor/qti/ims/configaidlservice/AutoConfigResponse;->reasonPhrase:Ljava/lang/String;

    .line 210
    .local v1, "errorStr":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->onAutoConfigurationErrorReceivedCb(ILjava/lang/String;)V

    .line 211
    return-void
.end method

.method synthetic lambda$handleAutoConfigReceived$2$vendor-qti-imsrcs-config-ImsConfigCbListener(Lvendor/qti/ims/configservice/V1_0/AutoConfig;)V
    .locals 7
    .param p1, "autoConfig"    # Lvendor/qti/ims/configservice/V1_0/AutoConfig;

    .line 95
    const-string v0, "ImsConfigCbListener"

    if-nez p1, :cond_0

    .line 96
    const-string v1, "autoConfig data null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 99
    :cond_0
    iget-object v1, p1, Lvendor/qti/ims/configservice/V1_0/AutoConfig;->configData:Lvendor/qti/ims/configservice/V1_0/ConfigData;

    iget-boolean v1, v1, Lvendor/qti/ims/configservice/V1_0/ConfigData;->isCompressed:Z

    .line 100
    .local v1, "isCompressed":Z
    iget-object v2, p1, Lvendor/qti/ims/configservice/V1_0/AutoConfig;->configData:Lvendor/qti/ims/configservice/V1_0/ConfigData;

    iget-object v2, v2, Lvendor/qti/ims/configservice/V1_0/ConfigData;->config:Ljava/util/ArrayList;

    .line 101
    .local v2, "configData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAutoConfigurationReceivedCb: xml: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [B

    .line 104
    .local v3, "arr":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 105
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v3, v4

    .line 104
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 108
    .local v4, "tempArr":[B
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "configStr":Ljava/lang/String;
    const-string v6, "value=\"100\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    invoke-virtual {p0, v3}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->onPreConfigReceivedCb([B)V

    .line 112
    const-string v6, "onPreConfigReceivedCb"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 115
    :cond_2
    invoke-virtual {p0, v3, v1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->onAutoConfigurationReceivedCb([BZ)V

    .line 116
    const-string v6, "onAutoConfigurationReceivedCb"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v3    # "arr":[B
    .end local v4    # "tempArr":[B
    .end local v5    # "configStr":Ljava/lang/String;
    goto :goto_1

    .line 118
    :cond_3
    const-string v3, "handleAutoConfigReceived config data null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_1
    return-void
.end method

.method synthetic lambda$handleAutoConfigReceived$7$vendor-qti-imsrcs-config-ImsConfigCbListener(Lvendor/qti/ims/configaidlservice/AutoConfig;)V
    .locals 6
    .param p1, "autoConfig"    # Lvendor/qti/ims/configaidlservice/AutoConfig;

    .line 179
    const-string v0, "ImsConfigCbListener"

    if-eqz p1, :cond_3

    iget-object v1, p1, Lvendor/qti/ims/configaidlservice/AutoConfig;->configData:Lvendor/qti/ims/configaidlservice/ConfigData;

    if-nez v1, :cond_0

    goto :goto_1

    .line 183
    :cond_0
    iget-object v1, p1, Lvendor/qti/ims/configaidlservice/AutoConfig;->configData:Lvendor/qti/ims/configaidlservice/ConfigData;

    iget-boolean v1, v1, Lvendor/qti/ims/configaidlservice/ConfigData;->isCompressed:Z

    .line 185
    .local v1, "isCompressed":Z
    iget-object v2, p1, Lvendor/qti/ims/configaidlservice/AutoConfig;->configData:Lvendor/qti/ims/configaidlservice/ConfigData;

    iget-object v2, v2, Lvendor/qti/ims/configaidlservice/ConfigData;->config:[B

    if-eqz v2, :cond_2

    iget-object v2, p1, Lvendor/qti/ims/configaidlservice/AutoConfig;->configData:Lvendor/qti/ims/configaidlservice/ConfigData;

    iget-object v2, v2, Lvendor/qti/ims/configaidlservice/ConfigData;->config:[B

    array-length v2, v2

    if-lez v2, :cond_2

    .line 187
    iget-object v2, p1, Lvendor/qti/ims/configaidlservice/AutoConfig;->configData:Lvendor/qti/ims/configaidlservice/ConfigData;

    iget-object v2, v2, Lvendor/qti/ims/configaidlservice/ConfigData;->config:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 188
    .local v2, "tempArr":[B
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "configStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAutoConfigurationReceivedCb: xml: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v4, "value=\"100\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    invoke-virtual {p0, v2}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->onPreConfigReceivedCb([B)V

    .line 193
    const-string v4, "onPreConfigReceivedCb"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 196
    :cond_1
    invoke-virtual {p0, v2, v1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->onAutoConfigurationReceivedCb([BZ)V

    .line 197
    const-string v4, "onAutoConfigurationReceivedCb"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v2    # "tempArr":[B
    .end local v3    # "configStr":Ljava/lang/String;
    goto :goto_0

    .line 199
    :cond_2
    const-string v2, "handleAutoConfigReceived config data null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    return-void

    .line 180
    .end local v1    # "isCompressed":Z
    :cond_3
    :goto_1
    const-string v1, "autoConfig data null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method synthetic lambda$handleGetSettingsResp$0$vendor-qti-imsrcs-config-ImsConfigCbListener(Lvendor/qti/ims/configservice/V1_1/SettingsData;II)V
    .locals 2
    .param p1, "settingsData"    # Lvendor/qti/ims/configservice/V1_1/SettingsData;
    .param p2, "status"    # I
    .param p3, "userData"    # I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetSettingsResp 1_1 cb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigCbListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method synthetic lambda$handleGetSettingsResp$1$vendor-qti-imsrcs-config-ImsConfigCbListener(Lvendor/qti/ims/configservice/V1_0/SettingsData;II)V
    .locals 2
    .param p1, "settingsData"    # Lvendor/qti/ims/configservice/V1_0/SettingsData;
    .param p2, "status"    # I
    .param p3, "userData"    # I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetSettingsResp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigCbListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method synthetic lambda$handleGetSettingsResp$6$vendor-qti-imsrcs-config-ImsConfigCbListener(Lvendor/qti/ims/configaidlservice/SettingsData;II)V
    .locals 2
    .param p1, "settingsData"    # Lvendor/qti/ims/configaidlservice/SettingsData;
    .param p2, "status"    # I
    .param p3, "userData"    # I

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetSettingsResp cb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigCbListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method synthetic lambda$handleGetUpdatedSettingsCb$4$vendor-qti-imsrcs-config-ImsConfigCbListener(Lvendor/qti/ims/configservice/V1_1/SettingsData;)V
    .locals 2
    .param p1, "settingsData"    # Lvendor/qti/ims/configservice/V1_1/SettingsData;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetUpdatedSettingsCb 1_1 cb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigCbListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method synthetic lambda$handleGetUpdatedSettingsCb$5$vendor-qti-imsrcs-config-ImsConfigCbListener(Lvendor/qti/ims/configservice/V1_0/SettingsData;)V
    .locals 2
    .param p1, "settingsData"    # Lvendor/qti/ims/configservice/V1_0/SettingsData;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetUpdatedSettingsCb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigCbListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method synthetic lambda$handleGetUpdatedSettingsCb$9$vendor-qti-imsrcs-config-ImsConfigCbListener(Lvendor/qti/ims/configaidlservice/SettingsData;)V
    .locals 2
    .param p1, "settingsData"    # Lvendor/qti/ims/configaidlservice/SettingsData;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetUpdatedSettingsCb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigCbListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public final notifyCommandStatus(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .line 56
    invoke-virtual {p0, p1, p2}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->onCommandStatusCb(II)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigCbListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public onAutoConfigurationErrorReceivedCb(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorStr"    # Ljava/lang/String;

    .line 245
    return-void
.end method

.method public onAutoConfigurationReceivedCb([BZ)V
    .locals 0
    .param p1, "autoConfigXml"    # [B
    .param p2, "isCompressed"    # Z

    .line 242
    return-void
.end method

.method public onCommandStatusCb(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .line 239
    return-void
.end method

.method public onPreConfigReceivedCb([B)V
    .locals 0
    .param p1, "preconfigxml"    # [B

    .line 248
    return-void
.end method

.method public onWrapperReset()V
    .locals 0

    .line 251
    return-void
.end method
