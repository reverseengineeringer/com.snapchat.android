.class final Lakp$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakp;->a(Ljava/util/List;)V
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


# direct methods
.method constructor <init>(Lakp;)V
    .locals 0

    .prologue
    .line 897
    iput-object p1, p0, Lakp$4;->this$0:Lakp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 897
    check-cast p1, Lcom/snapchat/android/model/Friend;

    check-cast p2, Lcom/snapchat/android/model/Friend;

    iget-wide v0, p2, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    iget-wide v2, p1, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/high16 v0, -0x80000000

    :goto_0
    return v0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method
