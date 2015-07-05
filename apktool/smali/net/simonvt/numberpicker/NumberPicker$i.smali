.class final Lnet/simonvt/numberpicker/NumberPicker$i;
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
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/numberpicker/NumberPicker;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0

    .prologue
    .line 2146
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$i;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker$i;I)I
    .locals 0

    .prologue
    .line 2146
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$i;->b:I

    return p1
.end method

.method static synthetic b(Lnet/simonvt/numberpicker/NumberPicker$i;I)I
    .locals 0

    .prologue
    .line 2146
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$i;->c:I

    return p1
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2152
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$i;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker$i;->b:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker$i;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 2153
    return-void
.end method
