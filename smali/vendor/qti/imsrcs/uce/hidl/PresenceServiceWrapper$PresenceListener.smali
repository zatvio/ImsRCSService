.class Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;
.super Lvendor/qti/ims/rcsuce/V1_2/IPresenceListener$Stub;
.source "PresenceServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresenceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;


# direct methods
.method private constructor <init>(Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    invoke-direct {p0}, Lvendor/qti/ims/rcsuce/V1_2/IPresenceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;
    .param p2, "x1"    # Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$1;

    .line 92
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;-><init>(Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public onCapInfoReceived(JLvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "l"    # J
    .param p3, "subscriptionStatus"    # Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    .local p4, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceListener: onCapInfoReceived :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 155
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handleCapInfo(JLvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;Ljava/util/ArrayList;)V

    .line 156
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public onCapInfoReceived_1_1(JLvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;Ljava/util/ArrayList;Z)V
    .locals 8
    .param p1, "l"    # J
    .param p3, "subscriptionStatus"    # Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;
    .param p5, "isMultipartNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    .local p4, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceListener: onCapInfoReceived :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 168
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    move-object v2, v1

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handleCapInfo_1_1(JLvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;Ljava/util/ArrayList;Z)V

    .line 169
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 170
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

    .line 125
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceListener: onCmdStatus :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 127
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    invoke-virtual {v1, p1, p2, p3}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handleCmdStatus(JI)V

    .line 128
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 129
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

    .line 105
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;)Ljava/lang/String;

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

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "version":I
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iput p1, v1, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mPublishTrigger:I

    .line 108
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iget-object v1, v1, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 109
    .local v2, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    iget-object v3, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iget v3, v3, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mSlotId:I

    invoke-virtual {v2, p1, v3, v0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handlePublishTrigger(III)V

    .line 110
    .end local v2    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public onPublishTrigger_1_1(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PresenceListener: onPublishTrigger_1_1 :: received ["

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

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "version":I
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iput p1, v1, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mPublishTrigger:I

    .line 118
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iget-object v1, v1, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 119
    .local v2, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    iget-object v3, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iget v3, v3, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mSlotId:I

    invoke-virtual {v2, p1, v3, v0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handlePublishTrigger(III)V

    .line 120
    .end local v2    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public onPublishUpdate(JLvendor/qti/ims/rcsuce/V1_0/SipResponse;)V
    .locals 2
    .param p1, "l"    # J
    .param p3, "sipResponse"    # Lvendor/qti/ims/rcsuce/V1_0/SipResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceListener: onPublishUpdate :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 143
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    invoke-virtual {v1, p1, p2, p3}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handlePublishUpdate(JLvendor/qti/ims/rcsuce/V1_0/SipResponse;)V

    .line 144
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 145
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

    .line 96
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;)Ljava/lang/String;

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

    .line 97
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iput p1, v0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mServiceAvailable:I

    .line 98
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 99
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    invoke-virtual {v1, p1}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handleServiceStatus(I)V

    .line 100
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public onSipResponse(JLvendor/qti/ims/rcsuce/V1_0/SipResponse;S)V
    .locals 2
    .param p1, "l"    # J
    .param p3, "sipResponse"    # Lvendor/qti/ims/rcsuce/V1_0/SipResponse;
    .param p4, "i"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceListener: onSipResponse :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 135
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handleSipResponse(JLvendor/qti/ims/rcsuce/V1_0/SipResponse;I)V

    .line 136
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 137
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

    .line 175
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceListener: onUnpublishSent :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 177
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    invoke-virtual {v1}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handlUnPublish()V

    .line 178
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method
