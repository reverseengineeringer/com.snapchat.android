.class final Lakp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakp;->d(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lakp;

.field final synthetic val$timestamps:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lakp;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lakp$2;->this$0:Lakp;

    iput-object p2, p0, Lakp$2;->val$timestamps:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/snapchat/android/model/Friend;)J
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lakp$2;->val$timestamps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 385
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 386
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 377
    check-cast p1, Lcom/snapchat/android/model/Friend;

    check-cast p2, Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, p2}, Lakp$2;->a(Lcom/snapchat/android/model/Friend;)J

    move-result-wide v0

    invoke-direct {p0, p1}, Lakp$2;->a(Lcom/snapchat/android/model/Friend;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method
