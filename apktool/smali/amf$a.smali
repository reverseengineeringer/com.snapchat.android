.class public final Lamf$a;
.super Lbkd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field final synthetic a:Lamf;


# direct methods
.method public constructor <init>(Lamf;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lamf$a;->a:Lamf;

    invoke-direct {p0}, Lbkd;-><init>()V

    return-void
.end method
