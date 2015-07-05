.class public final Lbhd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected conversationMessages:Lbhe;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_messages"
    .end annotation
.end field

.field protected conversationState:Lbhn;
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

.field protected lastCashTransaction:Lbhc;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_cash_transaction"
    .end annotation
.end field

.field protected lastChatActions:Lbid;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_chat_actions"
    .end annotation
.end field

.field protected lastInteractionTs:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_interaction_ts"
    .end annotation
.end field

.field protected lastSnap:Lbhy;
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
            "Lbhy;",
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
.method public final a(Lbhe;)Lbhd;
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lbhd;->conversationMessages:Lbhe;

    .line 220
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lbhd;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lbhy;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lbhd;->lastSnap:Lbhy;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lbhd;->lastSnap:Lbhy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lbid;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lbhd;->lastChatActions:Lbid;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lbhd;->lastChatActions:Lbid;

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
    instance-of v0, p1, Lbhd;

    if-nez v0, :cond_1

    .line 295
    const/4 v0, 0x0

    goto :goto_0

    .line 297
    :cond_1
    check-cast p1, Lbhd;

    .line 298
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbhd;->id:Ljava/lang/String;

    iget-object v2, p1, Lbhd;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->participants:Ljava/util/List;

    iget-object v2, p1, Lbhd;->participants:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->lastSnap:Lbhy;

    iget-object v2, p1, Lbhd;->lastSnap:Lbhy;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->lastChatActions:Lbid;

    iget-object v2, p1, Lbhd;->lastChatActions:Lbid;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->lastCashTransaction:Lbhc;

    iget-object v2, p1, Lbhd;->lastCashTransaction:Lbhc;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->lastInteractionTs:Ljava/lang/Long;

    iget-object v2, p1, Lbhd;->lastInteractionTs:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->pendingChatsFor:Ljava/util/List;

    iget-object v2, p1, Lbhd;->pendingChatsFor:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->pendingReceivedSnaps:Ljava/util/List;

    iget-object v2, p1, Lbhd;->pendingReceivedSnaps:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->conversationMessages:Lbhe;

    iget-object v2, p1, Lbhd;->conversationMessages:Lbhe;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->iterToken:Ljava/lang/String;

    iget-object v2, p1, Lbhd;->iterToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->conversationState:Lbhn;

    iget-object v2, p1, Lbhd;->conversationState:Lbhn;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Lbhc;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lbhd;->lastCashTransaction:Lbhc;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lbhd;->lastCashTransaction:Lbhc;

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
    iget-object v0, p0, Lbhd;->lastInteractionTs:Ljava/lang/Long;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 274
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbhd;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->participants:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->lastSnap:Lbhy;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->lastChatActions:Lbid;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->lastCashTransaction:Lbhc;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->lastInteractionTs:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->pendingChatsFor:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->pendingReceivedSnaps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->conversationMessages:Lbhe;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->iterToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhd;->conversationState:Lbhn;

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
            "Lbhy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lbhd;->pendingReceivedSnaps:Ljava/util/List;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lbhd;->pendingReceivedSnaps:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lbhe;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lbhd;->conversationMessages:Lbhe;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lbhd;->conversationMessages:Lbhe;

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
    iget-object v0, p0, Lbhd;->iterToken:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lbhd;->iterToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Lbhn;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lbhd;->conversationState:Lbhn;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lbhd;->conversationState:Lbhn;

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
