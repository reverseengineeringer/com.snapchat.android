.class final Lanf$a;
.super Lbks;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field final synthetic a:Lanf;


# direct methods
.method constructor <init>(Lanf;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lanf$a;->a:Lanf;

    invoke-direct {p0}, Lbks;-><init>()V

    return-void
.end method
