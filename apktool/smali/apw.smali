.class public abstract Lapw;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInitialInputText:Ljava/lang/String;

.field private mInputType:I

.field public mTextLimit:Ljava/lang/Integer;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object v0, p0, Lapw;->mTextLimit:Ljava/lang/Integer;

    .line 55
    iput-object p1, p0, Lapw;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lapw;->mTitle:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lapw;->mInitialInputText:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lapw;->mTextWatcher:Landroid/text/TextWatcher;

    .line 59
    iput p4, p0, Lapw;->mInputType:I

    .line 60
    return-void
.end method

.method static synthetic a(Lapw;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lapw;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 66
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lapw;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 67
    iget v1, p0, Lapw;->mInputType:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 70
    iget-object v1, p0, Lapw;->mTextLimit:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 71
    new-array v1, v5, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lapw;->mTextLimit:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 77
    :cond_0
    iget-object v1, p0, Lapw;->mInitialInputText:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lapw;->mInitialInputText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    const/high16 v1, 0x80000

    iget v2, p0, Lapw;->mInputType:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 81
    invoke-virtual {p0, v0}, Lapw;->setView(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lapw;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lapw;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0, v5}, Lapw;->setCancelable(Z)V

    .line 85
    const/4 v1, -0x1

    iget-object v2, p0, Lapw;->mContext:Landroid/content/Context;

    const v3, 0x7f0c01f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lapw$1;

    invoke-direct {v3, p0, v0}, Lapw$1;-><init>(Lapw;Landroid/widget/EditText;)V

    invoke-virtual {p0, v1, v2, v3}, Lapw;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 94
    const/4 v1, -0x2

    iget-object v2, p0, Lapw;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0058

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lapw$2;

    invoke-direct {v3, p0, v0}, Lapw$2;-><init>(Lapw;Landroid/widget/EditText;)V

    invoke-virtual {p0, v1, v2, v3}, Lapw;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    new-instance v1, Lapw$3;

    invoke-direct {v1, p0}, Lapw$3;-><init>(Lapw;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 112
    new-instance v1, Lapw$4;

    invoke-direct {v1, p0}, Lapw$4;-><init>(Lapw;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 128
    iget-object v1, p0, Lapw;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lapw;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    :cond_2
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 131
    return-void
.end method
