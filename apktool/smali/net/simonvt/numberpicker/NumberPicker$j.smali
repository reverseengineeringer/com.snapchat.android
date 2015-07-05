.class final Lnet/simonvt/numberpicker/NumberPicker$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field a:Lnet/simonvt/numberpicker/NumberPicker$a;

.field final synthetic b:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method private constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 2

    .prologue
    .line 2211
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$j;->b:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2213
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$a;

    invoke-direct {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$a;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$j;->a:Lnet/simonvt/numberpicker/NumberPicker$a;

    .line 2215
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;B)V
    .locals 0

    .prologue
    .line 2207
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker$j;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    .prologue
    .line 2226
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$j;->a:Lnet/simonvt/numberpicker/NumberPicker$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$j;->a:Lnet/simonvt/numberpicker/NumberPicker$a;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(II)V

    .line 2227
    :cond_0
    return-void
.end method

.method public final a(I)Z
    .locals 3

    .prologue
    .line 2218
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$j;->a:Lnet/simonvt/numberpicker/NumberPicker$a;

    if-eqz v0, :cond_0

    .line 2219
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$j;->a:Lnet/simonvt/numberpicker/NumberPicker$a;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker$a;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    .line 2222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
