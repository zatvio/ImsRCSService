.class public abstract Lvendor/qti/ims/configaidlservice/IConfigService$Stub;
.super Landroid/os/Binder;
.source "IConfigService.java"

# interfaces
.implements Lvendor/qti/ims/configaidlservice/IConfigService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/ims/configaidlservice/IConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/ims/configaidlservice/IConfigService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deregisterForSettingsChange:I = 0x1

.field static final TRANSACTION_getAcsConfiguration:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getRcsServiceStatus:I = 0x3

.field static final TRANSACTION_getSettingsValue:I = 0x4

.field static final TRANSACTION_getUceStatus:I = 0x5

.field static final TRANSACTION_getUserAgent:I = 0xc

.field static final TRANSACTION_registerForSettingsChange:I = 0x6

.field static final TRANSACTION_setAppToken:I = 0x7

.field static final TRANSACTION_setConfig:I = 0x8

.field static final TRANSACTION_setSettingsValue:I = 0x9

.field static final TRANSACTION_setSmsVersion:I = 0xd

.field static final TRANSACTION_triggerAcsRequest:I = 0xa

.field static final TRANSACTION_updateTokenFetchStatus:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 89
    invoke-virtual {p0}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->markVintfStability()V

    .line 90
    sget-object v0, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/ims/configaidlservice/IConfigService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    sget-object v0, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 102
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/ims/configaidlservice/IConfigService;

    if-eqz v1, :cond_1

    .line 103
    move-object v1, v0

    check-cast v1, Lvendor/qti/ims/configaidlservice/IConfigService;

    return-object v1

    .line 105
    :cond_1
    new-instance v1, Lvendor/qti/ims/configaidlservice/IConfigService$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 114
    sparse-switch p0, :sswitch_data_0

    .line 178
    const/4 v0, 0x0

    return-object v0

    .line 170
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 174
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 166
    :sswitch_2
    const-string v0, "setSmsVersion"

    return-object v0

    .line 162
    :sswitch_3
    const-string v0, "getUserAgent"

    return-object v0

    .line 158
    :sswitch_4
    const-string v0, "updateTokenFetchStatus"

    return-object v0

    .line 154
    :sswitch_5
    const-string v0, "triggerAcsRequest"

    return-object v0

    .line 150
    :sswitch_6
    const-string v0, "setSettingsValue"

    return-object v0

    .line 146
    :sswitch_7
    const-string v0, "setConfig"

    return-object v0

    .line 142
    :sswitch_8
    const-string v0, "setAppToken"

    return-object v0

    .line 138
    :sswitch_9
    const-string v0, "registerForSettingsChange"

    return-object v0

    .line 134
    :sswitch_a
    const-string v0, "getUceStatus"

    return-object v0

    .line 130
    :sswitch_b
    const-string v0, "getSettingsValue"

    return-object v0

    .line 126
    :sswitch_c
    const-string v0, "getRcsServiceStatus"

    return-object v0

    .line 122
    :sswitch_d
    const-string v0, "getAcsConfiguration"

    return-object v0

    .line 118
    :sswitch_e
    const-string v0, "deregisterForSettingsChange"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_d
        0x3 -> :sswitch_c
        0x4 -> :sswitch_b
        0x5 -> :sswitch_a
        0x6 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
        0xb -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 109
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 725
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 185
    invoke-static {p1}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    sget-object v0, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 190
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 191
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 213
    packed-switch p1, :pswitch_data_0

    .line 365
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 197
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    return v1

    .line 202
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p0}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    return v1

    .line 208
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p0}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    return v1

    .line 356
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v2}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->setSmsVersion(Ljava/lang/String;)I

    move-result v3

    .line 359
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    goto/16 :goto_0

    .line 346
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 347
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {p0, v2}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->getUserAgent(I)I

    move-result v3

    .line 349
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    goto/16 :goto_0

    .line 330
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 332
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 336
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 337
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->updateTokenFetchStatus(IIII)I

    move-result v6

    .line 339
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    goto/16 :goto_0

    .line 318
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 320
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 321
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2, v3}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->triggerAcsRequest(II)I

    move-result v4

    .line 323
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    goto/16 :goto_0

    .line 306
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_4
    sget-object v2, Lvendor/qti/ims/configaidlservice/SettingsData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/ims/configaidlservice/SettingsData;

    .line 308
    .local v2, "_arg0":Lvendor/qti/ims/configaidlservice/SettingsData;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 309
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2, v3}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->setSettingsValue(Lvendor/qti/ims/configaidlservice/SettingsData;I)I

    move-result v4

    .line 311
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    goto/16 :goto_0

    .line 294
    .end local v2    # "_arg0":Lvendor/qti/ims/configaidlservice/SettingsData;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_5
    sget-object v2, Lvendor/qti/ims/configaidlservice/ConfigData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/ims/configaidlservice/ConfigData;

    .line 296
    .local v2, "_arg0":Lvendor/qti/ims/configaidlservice/ConfigData;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 297
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v2, v3}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->setConfig(Lvendor/qti/ims/configaidlservice/ConfigData;I)I

    move-result v4

    .line 299
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    goto/16 :goto_0

    .line 282
    .end local v2    # "_arg0":Lvendor/qti/ims/configaidlservice/ConfigData;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 285
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2, v3}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->setAppToken(Ljava/lang/String;I)I

    move-result v4

    .line 287
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    goto/16 :goto_0

    .line 272
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 273
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v2}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->registerForSettingsChange(I)I

    move-result v3

    .line 275
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    goto :goto_0

    .line 261
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8
    new-instance v2, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;

    invoke-direct {v2}, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;-><init>()V

    .line 262
    .local v2, "_arg0":Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->getUceStatus(Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)I

    move-result v3

    .line 264
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 267
    goto :goto_0

    .line 249
    .end local v2    # "_arg0":Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;
    .end local v3    # "_result":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 251
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 252
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2, v3}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->getSettingsValue(II)I

    move-result v4

    .line 254
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    goto :goto_0

    .line 238
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_a
    new-instance v2, Lvendor/qti/ims/configaidlservice/RcsStatus;

    invoke-direct {v2}, Lvendor/qti/ims/configaidlservice/RcsStatus;-><init>()V

    .line 239
    .local v2, "_arg0":Lvendor/qti/ims/configaidlservice/RcsStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->getRcsServiceStatus(Lvendor/qti/ims/configaidlservice/RcsStatus;)I

    move-result v3

    .line 241
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 244
    goto :goto_0

    .line 228
    .end local v2    # "_arg0":Lvendor/qti/ims/configaidlservice/RcsStatus;
    .end local v3    # "_result":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->getAcsConfiguration(I)I

    move-result v3

    .line 231
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    goto :goto_0

    .line 218
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Lvendor/qti/ims/configaidlservice/IConfigService$Stub;->deregisterForSettingsChange(I)I

    move-result v3

    .line 221
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    nop

    .line 368
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
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
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
