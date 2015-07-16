.class final Lbmj$b$1;
.super Lcbb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmj$b;-><init>(Lbnh$c;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbnh$c;

.field final synthetic b:Lbmj$b;


# direct methods
.method constructor <init>(Lbmj$b;Lcbk;Lbnh$c;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lbmj$b$1;->b:Lbmj$b;

    iput-object p3, p0, Lbmj$b$1;->a:Lbnh$c;

    invoke-direct {p0, p2}, Lcbb;-><init>(Lcbk;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lbmj$b$1;->a:Lbnh$c;

    invoke-virtual {v0}, Lbnh$c;->close()V

    .line 687
    invoke-super {p0}, Lcbb;->close()V

    .line 688
    return-void
.end method
