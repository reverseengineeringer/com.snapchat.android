.class final Lbli$b$1;
.super Lcaa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbli$b;-><init>(Lbmg$c;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmg$c;

.field final synthetic b:Lbli$b;


# direct methods
.method constructor <init>(Lbli$b;Lcaj;Lbmg$c;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lbli$b$1;->b:Lbli$b;

    iput-object p3, p0, Lbli$b$1;->a:Lbmg$c;

    invoke-direct {p0, p2}, Lcaa;-><init>(Lcaj;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lbli$b$1;->a:Lbmg$c;

    invoke-virtual {v0}, Lbmg$c;->close()V

    .line 687
    invoke-super {p0}, Lcaa;->close()V

    .line 688
    return-void
.end method
