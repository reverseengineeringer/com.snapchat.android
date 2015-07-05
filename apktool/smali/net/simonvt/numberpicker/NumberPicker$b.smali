.class final Lnet/simonvt/numberpicker/NumberPicker$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0

    .prologue
    .line 2194
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$b;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2198
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$b;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->l(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 2199
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$b;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->m(Lnet/simonvt/numberpicker/NumberPicker;)Z

    .line 2200
    return-void
.end method
