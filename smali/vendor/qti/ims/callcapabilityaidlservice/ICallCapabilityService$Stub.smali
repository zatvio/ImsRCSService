.class public abstract Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Stub;
.super Landroid/os/Binder;
.source "ICallCapabilityService.java"

# interfaces
.implements Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_registerForCallCapabilityUpdate:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    invoke-virtual {p0}, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Stub;->markVintfStability()V

    .line 42
    sget-object v0, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    sget-object v0, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 66
    sparse-switch p0, :sswitch_data_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 74
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 78
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 70
    :sswitch_2
    const-string v0, "registerForCallCapabilityUpdate"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 61
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 215
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    sget-object v0, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 117
    packed-switch p1, :pswitch_data_0

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 106
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p0}, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return v1

    .line 112
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p0}, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v1

    .line 122
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityListener$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityListener;

    move-result-object v2

    .line 123
    .local v2, "_arg0":Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2}, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Stub;->registerForCallCapabilityUpdate(Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityListener;)I

    move-result v3

    .line 125
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    nop

    .line 134
    .end local v2    # "_arg0":Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityListener;
    .end local v3    # "_result":I
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
