.class Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;
.super Lvendor/qti/ims/rcsuceaidlservice/IPresenceListener$Stub;
.source "PresenceAidlServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresenceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;


# direct methods
.method private constructor <init>(Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    invoke-direct {p0}, Lvendor/qti/ims/rcsuceaidlservice/IPresenceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;
    .param p2, "x1"    # Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$1;

    .line 80
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;-><init>(Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onCapInfoReceived(JLvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;[Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;Z)V
    .locals 8
    .param p1, "l"    # J
    .param p3, "subscriptionStatus"    # Lvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;
    .param p4, "arrayList"    # [Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;
    .param p5, "isMultiPartNotify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceListener: onCapInfoReceived :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 144
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    move-object v2, v1

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handleCapInfo(JLvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;[Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;Z)V

    .line 145
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public onCmdStatus(JI)V
    .locals 2
    .param p1, "l"    # J
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceListener: onCmdStatus :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 115
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    invoke-virtual {v1, p1, p2, p3}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handleCmdStatus(JI)V

    .line 116
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public onPublishTrigger(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PresenceListener: onPublishTrigger :: received ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "version":I
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    iput p1, v1, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mPublishTrigger:I

    .line 106
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    iget-object v1, v1, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 107
    .local v2, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    iget-object v3, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    iget v3, v3, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mSlotId:I

    invoke-virtual {v2, p1, v3, v0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handlePublishTrigger(III)V

    .line 108
    .end local v2    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public onPublishUpdate(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;)V
    .locals 2
    .param p1, "l"    # J
    .param p3, "sipResponse"    # Lvendor/qti/ims/rcsuceaidlservice/SipResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceListener: onPublishUpdate :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 131
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    invoke-virtual {v1, p1, p2, p3}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handlePublishUpdate(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;)V

    .line 132
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public onServiceStatus(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PresenceListener: onServiceStatus :: received["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    iput p1, v0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mServiceAvailable:I

    .line 96
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 97
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    invoke-virtual {v1, p1}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handleServiceStatus(I)V

    .line 98
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public onSipResponse(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;C)V
    .locals 2
    .param p1, "l"    # J
    .param p3, "sipResponse"    # Lvendor/qti/ims/rcsuceaidlservice/SipResponse;
    .param p4, "i"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceListener: onSipResponse :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 123
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handleSipResponse(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;I)V

    .line 124
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method public onUnpublishSent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceListener: onUnpublishSent :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 153
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    invoke-virtual {v1}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handlUnPublish()V

    .line 154
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method
