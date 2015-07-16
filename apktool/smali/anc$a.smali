.class public final Lanc$a;
.super Lble;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field final synthetic a:Lanc;


# direct methods
.method public constructor <init>(Lanc;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lanc$a;->a:Lanc;

    invoke-direct {p0}, Lble;-><init>()V

    return-void
.end method
