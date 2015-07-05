.class public final Lte$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field private recipientUsernames:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient_usernames"
    .end annotation
.end field

.field final synthetic this$0:Lte;


# direct methods
.method public constructor <init>(Lte;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lcgb;
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
    iput-object p1, p0, Lte$a;->this$0:Lte;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 44
    iget-object v0, p1, Lte;->mGsonWrapper:Lato;

    invoke-virtual {v0, p2}, Lato;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lte$a;->recipientUsernames:Ljava/lang/String;

    .line 45
    return-void
.end method
