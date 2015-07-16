.class public final Ltu$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field private recipientUsernames:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient_usernames"
    .end annotation
.end field

.field final synthetic this$0:Ltu;


# direct methods
.method public constructor <init>(Ltu;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Ltu$a;->this$0:Ltu;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 44
    iget-object v0, p1, Ltu;->mGsonWrapper:Laum;

    invoke-virtual {v0, p2}, Laum;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltu$a;->recipientUsernames:Ljava/lang/String;

    .line 45
    return-void
.end method
