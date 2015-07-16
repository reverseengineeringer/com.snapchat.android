.class final Lbmj$b;
.super Lbne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lbnh$c;

.field private final b:Lcax;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbnh$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 678
    invoke-direct {p0}, Lbne;-><init>()V

    .line 679
    iput-object p1, p0, Lbmj$b;->a:Lbnh$c;

    .line 680
    iput-object p2, p0, Lbmj$b;->c:Ljava/lang/String;

    .line 681
    iput-object p3, p0, Lbmj$b;->d:Ljava/lang/String;

    .line 683
    iget-object v0, p1, Lbnh$c;->c:[Lcbk;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 684
    new-instance v1, Lbmj$b$1;

    invoke-direct {v1, p0, v0, p1}, Lbmj$b$1;-><init>(Lbmj$b;Lcbk;Lbnh$c;)V

    invoke-static {v1}, Lcbe;->a(Lcbk;)Lcax;

    move-result-object v0

    iput-object v0, p0, Lbmj$b;->b:Lcax;

    .line 690
    return-void
.end method

.method static synthetic a(Lbmj$b;)Lbnh$c;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lbmj$b;->a:Lbnh$c;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 698
    :try_start_0
    iget-object v2, p0, Lbmj$b;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbmj$b;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 700
    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final b()Lcax;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lbmj$b;->b:Lcax;

    return-object v0
.end method
