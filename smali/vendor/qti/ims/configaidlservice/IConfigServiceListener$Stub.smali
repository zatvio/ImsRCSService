.class public abstract Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;
.super Landroid/os/Binder;
.source "IConfigServiceListener.java"

# interfaces
.implements Lvendor/qti/ims/configaidlservice/IConfigServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/ims/configaidlservice/IConfigServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onAutoConfigErrorSipResponse:I = 0x1

.field static final TRANSACTION_onAutoConfigurationReceived:I = 0x2

.field static final TRANSACTION_onCommandStatus:I = 0x3

.field static final TRANSACTION_onGetSettingsResponse:I = 0x4

.field static final TRANSACTION_onGetUpdatedSettings:I = 0x5

.field static final TRANSACTION_onRcsServiceStatusUpdate:I = 0x6

.field static final TRANSACTION_onReconfigNeeded:I = 0x7

.field static final TRANSACTION_onTokenFetchRequest:I = 0x8

.field static final TRANSACTION_onUceStatusUpdate:I = 0x9

.field static final TRANSACTION_onUserAgentReceived:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    invoke-virtual {p0}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->markVintfStability()V

    .line 68
    sget-object v0, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/ims/configaidlservice/IConfigServiceListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 76
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    sget-object v0, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/ims/configaidlservice/IConfigServiceListener;

    if-eqz v1, :cond_1

    .line 81
    move-object v1, v0

    check-cast v1, Lvendor/qti/ims/configaidlservice/IConfigServiceListener;

    return-object v1

    .line 83
    :cond_1
    new-instance v1, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 92
    sparse-switch p0, :sswitch_data_0

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 136
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 140
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 132
    :sswitch_2
    const-string v0, "onUserAgentReceived"

    return-object v0

    .line 128
    :sswitch_3
    const-string v0, "onUceStatusUpdate"

    return-object v0

    .line 124
    :sswitch_4
    const-string v0, "onTokenFetchRequest"

    return-object v0

    .line 120
    :sswitch_5
    const-string v0, "onReconfigNeeded"

    return-object v0

    .line 116
    :sswitch_6
    const-string v0, "onRcsServiceStatusUpdate"

    return-object v0

    .line 112
    :sswitch_7
    const-string v0, "onGetUpdatedSettings"

    return-object v0

    .line 108
    :sswitch_8
    const-string v0, "onGetSettingsResponse"

    return-object v0

    .line 104
    :sswitch_9
    const-string v0, "onCommandStatus"

    return-object v0

    .line 100
    :sswitch_a
    const-string v0, "onAutoConfigurationReceived"

    return-object v0

    .line 96
    :sswitch_b
    const-string v0, "onAutoConfigErrorSipResponse"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0x3 -> :sswitch_9
        0x4 -> :sswitch_8
        0x5 -> :sswitch_7
        0x6 -> :sswitch_6
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 87
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 499
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 151
    invoke-static {p1}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    sget-object v0, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 156
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 157
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 179
    packed-switch p1, :pswitch_data_0

    .line 272
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 163
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return v1

    .line 168
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p0}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return v1

    .line 174
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p0}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    return v1

    .line 263
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 266
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v2, v3}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->onUserAgentReceived(Ljava/lang/String;I)V

    .line 268
    goto/16 :goto_0

    .line 255
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_1
    sget-object v2, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;

    .line 256
    .local v2, "_arg0":Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->onUceStatusUpdate(Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)V

    .line 258
    goto/16 :goto_0

    .line 243
    .end local v2    # "_arg0":Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 245
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 247
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 248
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->onTokenFetchRequest(III)V

    .line 250
    goto :goto_0

    .line 237
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_3
    invoke-virtual {p0}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->onReconfigNeeded()V

    .line 238
    goto :goto_0

    .line 230
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 231
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->onRcsServiceStatusUpdate(Z)V

    .line 233
    goto :goto_0

    .line 222
    .end local v2    # "_arg0":Z
    :pswitch_5
    sget-object v2, Lvendor/qti/ims/configaidlservice/SettingsData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/ims/configaidlservice/SettingsData;

    .line 223
    .local v2, "_arg0":Lvendor/qti/ims/configaidlservice/SettingsData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->onGetUpdatedSettings(Lvendor/qti/ims/configaidlservice/SettingsData;)V

    .line 225
    goto :goto_0

    .line 210
    .end local v2    # "_arg0":Lvendor/qti/ims/configaidlservice/SettingsData;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .local v2, "_arg0":I
    sget-object v3, Lvendor/qti/ims/configaidlservice/SettingsData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/ims/configaidlservice/SettingsData;

    .line 214
    .local v3, "_arg1":Lvendor/qti/ims/configaidlservice/SettingsData;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 215
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->onGetSettingsResponse(ILvendor/qti/ims/configaidlservice/SettingsData;I)V

    .line 217
    goto :goto_0

    .line 200
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/ims/configaidlservice/SettingsData;
    .end local v4    # "_arg2":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2, v3}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->onCommandStatus(II)V

    .line 205
    goto :goto_0

    .line 192
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_8
    sget-object v2, Lvendor/qti/ims/configaidlservice/AutoConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/ims/configaidlservice/AutoConfig;

    .line 193
    .local v2, "_arg0":Lvendor/qti/ims/configaidlservice/AutoConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->onAutoConfigurationReceived(Lvendor/qti/ims/configaidlservice/AutoConfig;)V

    .line 195
    goto :goto_0

    .line 184
    .end local v2    # "_arg0":Lvendor/qti/ims/configaidlservice/AutoConfig;
    :pswitch_9
    sget-object v2, Lvendor/qti/ims/configaidlservice/AutoConfigResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/ims/configaidlservice/AutoConfigResponse;

    .line 185
    .local v2, "_arg0":Lvendor/qti/ims/configaidlservice/AutoConfigResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;->onAutoConfigErrorSipResponse(Lvendor/qti/ims/configaidlservice/AutoConfigResponse;)V

    .line 187
    nop

    .line 275
    .end local v2    # "_arg0":Lvendor/qti/ims/configaidlservice/AutoConfigResponse;
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
