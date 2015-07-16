.class public final Lcom/snapchat/android/model/chat/ChatConversation$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/chat/ChatConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lakw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/model/chat/ChatConversation;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation$3;->this$0:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 1015
    check-cast p1, Lakw;

    check-cast p2, Lakw;

    invoke-virtual {p1}, Lakw;->t()J

    move-result-wide v0

    invoke-virtual {p2}, Lakw;->t()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lakw;->t()J

    move-result-wide v0

    invoke-virtual {p2}, Lakw;->t()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
