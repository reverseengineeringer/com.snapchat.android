.class final Lalo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lalc;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lala;


# direct methods
.method private constructor <init>(Lala;)V
    .locals 0
    .param p1    # Lala;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lalo;->a:Lala;

    .line 26
    return-void
.end method

.method public static a(Lala;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lala;",
            ")",
            "Ljava/util/Comparator",
            "<",
            "Lalc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lalo;

    invoke-direct {v0, p0}, Lalo;-><init>(Lala;)V

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 20
    check-cast p1, Lalc;

    check-cast p2, Lalc;

    iget-object v0, p0, Lalo;->a:Lala;

    invoke-virtual {v0, p1}, Lala;->b(Lalc;)I

    move-result v0

    iget-object v1, p0, Lalo;->a:Lala;

    invoke-virtual {v1, p2}, Lala;->b(Lalc;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lalo;->a:Lala;

    invoke-virtual {v0, p1}, Lala;->a(Lalc;)Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v0

    iget-object v1, p0, Lalo;->a:Lala;

    invoke-virtual {v1, p2}, Lala;->a(Lalc;)Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/networkmanager/DownloadPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lalc;->j:J

    iget-wide v2, p2, Lalc;->j:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-wide v0, p1, Lalc;->j:J

    iget-wide v2, p2, Lalc;->j:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
