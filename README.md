# Extending Activation Steering to Broad Skills and Multiple Behaviours
You can find the paper here [Still add link].
## Abstract
Current large language models have dangerous capabilities, which are likely to become more problematic in the future. Activation steering techniques can be used to reduce risks from these capabilities. To realize this aim, we investigate the efficacy of activation steering to reduce broad steering and multiple behaviours. First, by comparing the effects of reducing performance on general coding ability and Python-specific ability, we find that steering broader skills works equally well as steering narrower skills. Second, we steer models to become more or less myopic and wealth-seeking, among others. We find that combining steering vectors for multiple different behaviours into one steering vector was largely unsuccessful. On the other hand, injecting individual steering vectors at different places in a model simultaneously was mostly effective, with only a marginal reduction in general performance. Simultaneous steering might therefore a promising extension of current activation steering methods.

![image](https://github.com/TeunvdWeij/output_control/assets/57399756/b2b03f96-62bf-43e7-bb4b-504da33e8cb1)

## Repository outline
```
├── bash_scripts (various scripts to run on high-performance cluster)
├── data
│   ├── activations (stored activations of different runs)
│   ├── datasets (behaviour dataset and how to download them)
│   └── skip_tokens (tokens to skip, not used in paper)
├── notebooks
│   ├── make_coding_plots.ipynb 
│   ├── misc_investigations.ipynb (activation pattern of steering vector)
│   ├── multi_steering.ipynb (run the multi steering experiments)
│   └── plot_multiple_concept_steering.ipynb
├── plots (various plots, most important ones are in the paper)
├── results (mostly json files of experimental results, not all are in paper and some are old)
├── src
│   ├── activation_tensor.py (class to save activations and its meta data)
│   ├── evaluate.py (main evaluation workflow)
│   ├── evaluation.py (class to store and process evaluation results)
│   ├── generate_activations.py (main activation generation workflow)
│   ├── model.py (wrapper aroudn the Llama2 models)
│   ├── multi_steering_activation_tensor.py (not used for paper)
│   ├── multi_steering_generate_activations.py (not used for paper)
│   ├── skip_tokens.py (not used for paper)
│   └── utils.py 
```
Due to a lack of time and other priorities, not all of the code is at neat as it maybe should be. Please reach out to me (mailvanteun@gmail.com) if you have any questions about the code!
