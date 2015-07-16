.class public final Lbid;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected conversationMessages:Lbie;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_messages"
    .end annotation
.end field

.field protected conversationState:Lbin;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_state"
    .end annotation
.end field

.field protected id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field protected iterToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iter_token"
    .end annotation
.end field

.field protected lastCashTransaction:Lbic;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_cash_transaction"
    .end annotation
.end field

.field protected lastChatActions:Lbjd;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_chat_actions"
    .end annotation
.end field

.field protected lastInteractionTs:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_interaction_ts"
    .end annotation
.end field

.field protected lastSnap:Lbiy;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_snap"
    .end annotation
.end field

.field protected participants:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "participants"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected pendingChatsFor:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pending_chats_for"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected pendingReceivedSnaps:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pending_received_snaps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbiy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbie;)Lbid;
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lbid;->conversationMessages:Lbie;

    .line 220
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lbid;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lbiy;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lbid;->lastSnap:Lbiy;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lbid;->lastSnap:Lbiy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lbjd;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lbid;->lastChatActions:Lbjd;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lbid;->lastChatActions:Lbjd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 291
    if-ne p1, p0, :cond_0

    .line 292
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    .line 294
    :cond_0
    instance-of v0, p1, Lbid;

    if-nez v0, :cond_1

    .line 295
    const/4 v0, 0x0

    goto :goto_0

    .line 297
    :cond_1
    check-cast p1, Lbid;

    .line 298
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbid;->id:Ljava/lang/String;

    iget-object v2, p1, Lbid;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->participants:Ljava/util/List;

    iget-object v2, p1, Lbid;->participants:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->lastSnap:Lbiy;

    iget-object v2, p1, Lbid;->lastSnap:Lbiy;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->lastChatActions:Lbjd;

    iget-object v2, p1, Lbid;->lastChatActions:Lbjd;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->lastCashTransaction:Lbic;

    iget-object v2, p1, Lbid;->lastCashTransaction:Lbic;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->lastInteractionTs:Ljava/lang/Long;

    iget-object v2, p1, Lbid;->lastInteractionTs:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->pendingChatsFor:Ljava/util/List;

    iget-object v2, p1, Lbid;->pendingChatsFor:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->pendingReceivedSnaps:Ljava/util/List;

    iget-object v2, p1, Lbid;->pendingReceivedSnaps:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->conversationMessages:Lbie;

    iget-object v2, p1, Lbid;->conversationMessages:Lbie;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->iterToken:Ljava/lang/String;

    iget-object v2, p1, Lbid;->iterToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->conversationState:Lbin;

    iget-object v2, p1, Lbid;->conversationState:Lbin;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Lbic;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lbid;->lastCashTransaction:Lbic;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lbid;->lastCashTransaction:Lbic;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lbid;->lastInteractionTs:Ljava/lang/Long;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 274
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbid;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->participants:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->lastSnap:Lbiy;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->lastChatActions:Lbjd;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->lastCashTransaction:Lbic;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->lastInteractionTs:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->pendingChatsFor:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->pendingReceivedSnaps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->conversationMessages:Lbie;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->iterToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbid;->conversationState:Lbin;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbiy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lbid;->pendingReceivedSnaps:Ljava/util/List;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lbid;->pendingReceivedSnaps:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lbie;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lbid;->conversationMessages:Lbie;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lbid;->conversationMessages:Lbie;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lbid;->iterToken:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lbid;->iterToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Lbin;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lbid;->conversationState:Lbin;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lbid;->conversationState:Lbin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
