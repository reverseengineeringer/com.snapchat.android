.class public final Laik$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Laik;


# direct methods
.method public constructor <init>(Laik;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Laik$1;->a:Laik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laik$1;->a:Laik;

    invoke-virtual {v0}, Laik;->b()V

    .line 64
    return-void
.end method
